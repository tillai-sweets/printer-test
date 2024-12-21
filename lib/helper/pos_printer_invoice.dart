import 'package:flutter/services.dart';
import 'package:flutter_esc_pos_utils/flutter_esc_pos_utils.dart';
import 'package:image/image.dart' as img;
import '../model/new_order_model.dart';
import '../models/ModelProvider.dart';

Future<List<int>> generatePosPrinterInvoiceView({
  required InvoiceModel invoice,
  required Uint8List logoBytes,
  required Uint8List fssaiBytes,
  required List<AddOnItem> addOnItems,
}) async {
  final profile = await CapabilityProfile.load();
  final generator = Generator(PaperSize.mm80, profile);
  List<int> bytes = [];

  // Decode and resize the logo for thermal printers
  final img.Image? decodedImage = img.decodeImage(logoBytes);
  if (decodedImage != null) {
    final img.Image resizedImage = img.copyResize(decodedImage, width: 384);
    bytes += generator.imageRaster(resizedImage, align: PosAlign.center);
  }

  // Header Section
  bytes += generator.text(
    invoice.shopName,
    styles: const PosStyles(
      align: PosAlign.center,
      bold: true,
      height: PosTextSize.size2,
    ),
  );
  for (String line in invoice.shopAdrress) {
    bytes +=
        generator.text(line, styles: const PosStyles(align: PosAlign.center));
  }
  bytes += generator.text('GSTIN: ${invoice.gstIn}',
      styles: const PosStyles(align: PosAlign.center));
  bytes += generator.text('FSSAI: ${invoice.fssaiNo}',
      styles: const PosStyles(align: PosAlign.center));
  bytes += generator.feed(1);

  // Invoice Details
  bytes += generator.text(
    'Invoice Details',
    styles: const PosStyles(bold: true, underline: true),
  );
  bytes += generator.text('Order No: ${invoice.orderNo}');
  bytes += generator.text('Date: ${invoice.date} ${invoice.time}');
  bytes +=
      generator.text('Delivery: ${invoice.deliveryDateTimeStr}', linesAfter: 1);

  // Customer Details
  bytes += generator.text(
    'Invoice To:',
    styles: const PosStyles(bold: true, underline: true),
  );
  bytes += generator.text(invoice.customer.name ?? '');
  bytes += generator.text(invoice.customer.phoneNumber ?? '');
  bytes += generator.text(
    _getCustomerAddress(invoice.customer),
    linesAfter: 1,
  );

  // Items Table Header (Total Width = 12)
  bytes += generator.row([
    PosColumn(text: 'Item', width: 6, styles: const PosStyles(bold: true)),
    PosColumn(text: 'Qty', width: 2, styles: const PosStyles(bold: true)),
    PosColumn(text: 'Price', width: 2, styles: const PosStyles(bold: true)),
    PosColumn(text: 'Total', width: 2, styles: const PosStyles(bold: true)),
  ]);

  // Items Data (Total Width = 12)
  for (InvoiceItem item in invoice.items) {
    bytes += generator.row([
      PosColumn(
        text: _getItemDescription(item),
        width: 6,
      ),
      PosColumn(text: item.qty, width: 2),
      PosColumn(text: item.rate, width: 2),
      PosColumn(text: item.price, width: 2),
    ]);
  }

  bytes += generator.feed(1);

  // GST Details (Total Width = 12)
  bytes += generator.text(
    'GST Details:',
    styles: const PosStyles(bold: true, underline: true),
  );
  bytes += generator.row([
    PosColumn(text: 'GST %', width: 3, styles: const PosStyles(bold: true)),
    PosColumn(text: 'CGST', width: 3, styles: const PosStyles(bold: true)),
    PosColumn(text: 'UTGST', width: 3, styles: const PosStyles(bold: true)),
    PosColumn(text: 'Total Tax', width: 3, styles: const PosStyles(bold: true)),
  ]);
  bytes += generator.row([
    PosColumn(text: '18%', width: 3),
    PosColumn(text: invoice.cgstAmt, width: 3),
    PosColumn(text: invoice.utstAmt, width: 3),
    PosColumn(text: invoice.taxAmt, width: 3),
  ]);
  bytes += generator.feed(1);

  // Totals Section
  bytes += generator.text('Discount: ${invoice.disount}',
      styles: const PosStyles(align: PosAlign.right));
  bytes += generator.text(
    'Grand Total: ${invoice.totalPayable}',
    styles: const PosStyles(align: PosAlign.right, bold: true),
  );
  bytes += generator.text('Advance: ${invoice.advanceAmt}',
      styles: const PosStyles(align: PosAlign.right));
  bytes += generator.text(
    'Due: ${invoice.dueAmt}',
    styles: const PosStyles(align: PosAlign.right, bold: true),
  );
  bytes += generator.feed(1);

  // Footer
  bytes += generator.text(
    '** Taste the Best! **',
    styles: const PosStyles(align: PosAlign.center, bold: true),
  );
  bytes += generator.cut();

  return bytes;
}

String _getCustomerAddress(Customer customer) {
  String address = '';
  if (customer.addressLine1 != null && customer.addressLine1!.isNotEmpty) {
    address += customer.addressLine1!;
  }
  if (customer.addressLine2 != null && customer.addressLine2!.isNotEmpty) {
    address += ', ${customer.addressLine2}';
  }
  if (customer.landmark != null && customer.landmark!.isNotEmpty) {
    address += ', ${customer.landmark}';
  }
  if (customer.pincode != null && customer.pincode!.isNotEmpty) {
    address += ', ${customer.pincode}';
  }
  return address;
}

String _getItemDescription(InvoiceItem item) {
  String description = item.name;
  if (!item.isAddOnItem) {
    description += ' ${item.weightStr}';
    if (item.customerMessage != null && item.customerMessage!.isNotEmpty) {
      description += '\n(${item.customerMessage})';
    }
  }
  return description;
}
