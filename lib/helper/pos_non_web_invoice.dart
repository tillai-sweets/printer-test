import 'package:flutter/services.dart';
import 'package:flutter_esc_pos_utils/flutter_esc_pos_utils.dart';
import 'package:image/image.dart' as img;
import 'package:testprint/helper/util.dart';

import '../../gen/assets.gen.dart';
import '../../model/new_order_model.dart';
import '../../models/ModelProvider.dart';

Future<List<int>> generatePosPrinterInvoiceView({
  required InvoiceModel invoice,
  required Uint8List logoBytes,
  required Uint8List footerBytes,
  required Uint8List fssaiBytes,
  required List<AddOnItem> addOnItems,
}) async {
  final profile = await CapabilityProfile.load();
  final generator = Generator(PaperSize.mm80, profile);
  List<int> bytes = [];

  // Add header logo
  bytes += _generateLogo(generator: generator, logoBytes: logoBytes);

  // Add invoice details
  bytes += generator.feed(1); // Space
  bytes += generator.row([
    PosColumn(
        text: 'Invoice Details', width: 6, styles: const PosStyles(bold: true)),
    PosColumn(text: '', width: 1),
    PosColumn(
        text: 'Invoice To', width: 5, styles: const PosStyles(bold: true)),
  ]);
  bytes += generator.row([
    PosColumn(
        text: 'Order No: ${invoice.orderNo}',
        width: 6,
        styles: const PosStyles(bold: false)),
    PosColumn(text: '', width: 1),
    PosColumn(
        text: invoice.customer.name ?? '',
        width: 5,
        styles: const PosStyles(bold: false)),
  ]);
  bytes += generator.row([
    PosColumn(
        text: 'OFN     : ${invoice.orderFormNumber ?? ''}',
        width: 6,
        styles: const PosStyles(bold: false)),
    PosColumn(text: '', width: 1),
    PosColumn(
        text: invoice.customer.phoneNumber ?? '',
        width: 5,
        styles: const PosStyles(bold: false)),
  ]);
  bytes += _generateKeyValuePair(
      generator, 'Date    :', '${invoice.date} ${invoice.time}');
  bytes += _generateKeyValuePair(
      generator, 'Delivery:', invoice.deliveryDateTimeStr,
      bold: true);
  bytes += _generateKeyValuePair(generator, 'Address : ',
      Util.removeLeadingComma(_getCustomerAddress(invoice.customer)));

  // Add items table
  bytes += generator.feed(1); // Space
  bytes += _generateItemsTable(generator, invoice, fontSize: 0.8);

  // // Add totals
  // bytes += generator.feed(1); // Space
  // bytes += _generateKeyValuePair(
  //     generator, 'Discount:', _withRupee(invoice.disount),
  //     align: PosAlign.right, fontSize: 0.9);
  // bytes += _generateKeyValuePair(
  //     generator, 'Grand Total:', _withRupee(invoice.totalPayable),
  //     align: PosAlign.right, fontSize: 1.2, bold: true);
  // bytes += _generateKeyValuePair(
  //     generator, 'Advance:', _withRupee(invoice.advanceAmt),
  //     align: PosAlign.right, fontSize: 0.9);
  // bytes += _generateKeyValuePair(generator, 'Due:', _withRupee(invoice.dueAmt),
  //     align: PosAlign.right, fontSize: 2, bold: true, linesAfter: 1);

  // Add GST details
  bytes += generator.feed(1); // Space
  // bytes += _generateSectionHeader(generator, 'GST Details:');
  // bytes += _generateGSTDetails(generator, invoice, fontSize: 0.8);
  bytes += _generateGSTAndAmtDetails(generator, invoice);

  // Add footer
  bytes += generator.feed(1); // Space
  var footerImage = await _image(
      generator: generator,
      imagePath: Assets.images.posFooter.path,
      width: 384);
  if (footerImage != null) {
    bytes += footerImage;
  }
  bytes += generator.feed(1);
  bytes += _generateText(generator, '***** Thank You, Visit Again *****',
      align: PosAlign.center);
  bytes += generator.feed(2);
  bytes += generator.cut();
  return bytes;
}

Future<List<int>?>? _image(
    {required Generator generator,
    required String imagePath,
    int? width}) async {
  // Load the image from assets
  final ByteData data = await rootBundle.load(imagePath);
  final Uint8List imgBytes = data.buffer.asUint8List();
  // Decode the image using the `image` package
  final img.Image? decodedImage = img.decodeImage(imgBytes);

  if (decodedImage != null) {
    // Convert the image to raster format for ESC/POS printers
    final img.Image resizedImage = img.copyResize(decodedImage,
        width: width ?? 384); // Resize for 80mm printer width
    return generator.imageRaster(
      resizedImage,
      align: PosAlign.center,
    );
  }
  return null;
}

List<int> _generateLogo({
  required Generator generator,
  required Uint8List logoBytes,
  int? width,
}) {
  final img.Image? decodedImage = img.decodeImage(logoBytes);
  if (decodedImage != null) {
    // Resize the image while maintaining aspect ratio
    final img.Image resizedImage = img.copyResize(
      decodedImage,
      width: width ?? 576, // Default to full paper width
    );

    // Convert the image to a supported format (e.g., grayscale)
    final img.Image formattedImage = img.grayscale(resizedImage);

    // Return the rasterized image bytes
    return generator.imageRaster(formattedImage, align: PosAlign.center);
  }
  return [];
}

List<int> _generateLogoOld(
    {required Generator generator, required Uint8List logoBytes, int? width}) {
  final img.Image? decodedImage = img.decodeImage(logoBytes);
  if (decodedImage != null) {
    final img.Image resizedImage =
        img.copyResize(decodedImage, width: width ?? 576); // Fit to paper width
    return generator.imageRaster(resizedImage, align: PosAlign.center);
  }
  return [];
}

List<int> _generateSectionHeader(Generator generator, String text,
    {int? linesAfter}) {
  return _generateText(generator, text,
      fontSize: 1.2, bold: true, underline: true, linesAfter: linesAfter ?? 0);
}

List<int> _generateKeyValuePair(
  Generator generator,
  String key,
  String value, {
  PosAlign align = PosAlign.left,
  double fontSize = 1.0,
  bool bold = false,
  int linesAfter = 0,
}) {
  return _generateText(generator, '$key $value',
      fontSize: fontSize, bold: bold, align: align, linesAfter: linesAfter);
}

List<int> _generateItemsTable(Generator generator, InvoiceModel invoice,
    {double fontSize = 1.0}) {
  List<InvoiceItem> items = invoice.items;
  List<int> bytes = [];
  bytes += generator.row([
    PosColumn(
        text: 'Item',
        width: 7,
        styles: const PosStyles(bold: true, align: PosAlign.left)),
    PosColumn(
        text: 'Qty',
        width: 1,
        styles: const PosStyles(bold: true, align: PosAlign.right)),
    PosColumn(
        text: 'Price',
        width: 2,
        styles: const PosStyles(bold: true, align: PosAlign.right)),
    PosColumn(
        text: 'Total',
        width: 2,
        styles: const PosStyles(bold: true, align: PosAlign.right)),
  ]);
  bytes += generator.row([
    PosColumn(text: '', width: 7, styles: const PosStyles(bold: true)),
    PosColumn(text: '', width: 1, styles: const PosStyles(bold: true)),
    PosColumn(text: '', width: 1, styles: const PosStyles(bold: true)),
    PosColumn(
        text: '(Incl Tax)',
        width: 3,
        styles: const PosStyles(
            bold: false, align: PosAlign.right, fontType: PosFontType.fontB)),
  ]);
  for (InvoiceItem item in items) {
    bytes += generator.row([
      PosColumn(
        text: Util.toTitleCase(_getItemDescription(item)),
        width: 7,
        styles: const PosStyles(align: PosAlign.left),
      ),
      PosColumn(
        text: item.qty,
        width: 1,
        styles: const PosStyles(align: PosAlign.right),
      ),
      PosColumn(
        text:
            item.isAddOnItem ? (item.weightStr == '-' ? '-' : item.price) : '-',
        width: 2,
        styles: const PosStyles(align: PosAlign.right),
      ),
      PosColumn(
        text: item.price,
        width: 2,
        styles: const PosStyles(align: PosAlign.right),
      ),
    ]);
    if (!_isStringNullOrEmpty(item.customerMessage)) {
      bytes += generator.row([
        PosColumn(
          text: '(${item.customerMessage})',
          width: 7,
          styles: const PosStyles(bold: true, align: PosAlign.left),
        ),
        PosColumn(
          text: '',
          width: 1,
        ),
        PosColumn(
          text: '',
          width: 2,
        ),
        PosColumn(
          text: '',
          width: 2,
        ),
      ]);
    }
  }
  bytes += generator.row([
    PosColumn(text: '', width: 8, styles: const PosStyles(bold: true)),
    PosColumn(
        text: 'Total',
        width: 2,
        styles: const PosStyles(bold: true, align: PosAlign.right)),
    PosColumn(
        text: invoice.totalAmt,
        width: 2,
        styles: const PosStyles(bold: false, align: PosAlign.right)),
  ]);

  // bytes += _generateKeyValuePair(generator, 'Total     :', invoice.totalAmt);
  return bytes;
}

List<int> _generateGSTDetails(Generator generator, InvoiceModel invoice,
    {double fontSize = 0.8}) {
  // return generator.row([
  //   PosColumn(text: ' GST %     : 18%', width: 3),
  //   PosColumn(text: ' CGST      : ${_withRupee(invoice.cgstAmt)}', width: 3),
  //   PosColumn(text: ' UTGST     : ${_withRupee(invoice.utstAmt)}', width: 3),
  //   PosColumn(text: ' Total Tax : ${_withRupee(invoice.taxAmt)}', width: 3),
  // ]);
  List<int> bytes = [];
  bytes += _generateText(generator, ' GST %     : 18%');
  bytes +=
      _generateText(generator, ' CGST      : ${_withRupee(invoice.cgstAmt)}');
  bytes +=
      _generateText(generator, ' UTGST     : ${_withRupee(invoice.utstAmt)}');
  bytes +=
      _generateText(generator, ' Total Tax : ${_withRupee(invoice.taxAmt)}');
  return bytes;
}

List<int> _generateGSTAndAmtDetails(
  Generator generator,
  InvoiceModel invoice,
) {
  List<int> bytes = [];
  bytes += generator.row([
    PosColumn(
        text: 'GST Details:', width: 6, styles: const PosStyles(bold: true)),
    PosColumn(text: '', width: 1),
    PosColumn(text: '', width: 5, styles: const PosStyles(bold: true)),
  ]);
  bytes += generator.row([
    PosColumn(
        text: 'GST %', width: 3, styles: const PosStyles(align: PosAlign.left)),
    PosColumn(text: ':', width: 1),
    PosColumn(
        text: '18%', width: 3, styles: const PosStyles(align: PosAlign.left)),
    PosColumn(text: '', width: 5, styles: const PosStyles(bold: true)),
  ]);
  bytes += generator.row([
    PosColumn(
        text: 'CGST', width: 3, styles: const PosStyles(align: PosAlign.left)),
    PosColumn(text: ':', width: 1),
    PosColumn(
        text: _withRupee(invoice.cgstAmt),
        width: 3,
        styles: const PosStyles(align: PosAlign.left)),
    PosColumn(
        text: 'Discount: ${_withRupee(invoice.disount)}',
        width: 5,
        styles: const PosStyles(align: PosAlign.right)),
  ]);
  bytes += generator.row([
    PosColumn(
        text: 'UTGST', width: 3, styles: const PosStyles(align: PosAlign.left)),
    PosColumn(text: ':', width: 1),
    PosColumn(
        text: _withRupee(invoice.utstAmt),
        width: 3,
        styles: const PosStyles(align: PosAlign.left)),
    PosColumn(
        text: 'Grand Total: ${_withRupee(invoice.totalPayable)}',
        width: 5,
        styles: const PosStyles(align: PosAlign.right, bold: true)),
  ]);
  bytes += generator.row([
    PosColumn(
        text: 'Total Tax',
        width: 3,
        styles: const PosStyles(align: PosAlign.left)),
    PosColumn(text: ':', width: 1),
    PosColumn(
        text: _withRupee(invoice.taxAmt),
        width: 3,
        styles: const PosStyles(align: PosAlign.left)),
    PosColumn(
        text: 'Advance: ${_withRupee(invoice.advanceAmt)}',
        width: 5,
        styles: const PosStyles(
          align: PosAlign.right,
        )),
  ]);
  bytes += _generateKeyValuePair(generator, 'Due:', _withRupee(invoice.dueAmt),
      align: PosAlign.right, fontSize: 2, bold: true, linesAfter: 1);
  return bytes;
}

List<int> _generateText(
  Generator generator,
  String text, {
  double fontSize = 1.0,
  bool bold = false,
  bool underline = false,
  PosAlign align = PosAlign.left,
  int linesAfter = 0,
}) {
  PosTextSize textSize;
  if (fontSize >= 1.5) {
    textSize = PosTextSize.size2;
  } else {
    textSize = PosTextSize.size1;
  }
  return generator.text(
    text,
    styles: PosStyles(
      align: align,
      bold: bold,
      underline: underline,
      height: textSize,
      width: textSize,
    ),
    linesAfter: linesAfter,
  );
}

String _getCustomerAddress(Customer customer) {
  String address = '';
  if (!_isStringNullOrEmpty(customer.addressLine1)) {
    address += Util.toTitleCase(customer.addressLine1!);
  }
  if (!_isStringNullOrEmpty(customer.addressLine2)) {
    if (!_isStringNullOrEmpty(address)) address += ', ';
    address += Util.toTitleCase(customer.addressLine2!);
  }
  if (!_isStringNullOrEmpty(customer.landmark)) {
    if (!_isStringNullOrEmpty(address)) address += ',\n ';
    address += Util.toTitleCase(customer.landmark!);
  }
  if (!_isStringNullOrEmpty(customer.pincode)) {
    if (!_isStringNullOrEmpty(address)) address += ', ';
    address += customer.pincode!;
  }
  return address;
}

bool _isStringNullOrEmpty(String? value) => Util.isStringNullOrEmpty(value);

String _getItemDescription(InvoiceItem item) {
  String description = item.name;
  if (!item.isAddOnItem) {
    description += ' ${item.weightStr}';
  }
  return Util.toTitleCase(description);
}

// Reusable function to add Rupee symbol
String _withRupee(String value) {
  return 'Rs.$value';
}
