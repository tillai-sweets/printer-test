import 'package:flutter_esc_pos_utils/flutter_esc_pos_utils.dart';

import '../../models/ModelProvider.dart';
import '../model/new_order_model.dart';
import 'util.dart';

Future<List<int>> generateNonWebPosInvoiceView({
  required InvoiceModel invoice,
  required List<AddOnItem> addOnItems,
}) async {
  return await _generateNonWebPosInvoice(
    shopName: 'Tillai Bakery and Sweets',
    shopAddress: invoice.shopAdrress,
    gstin: invoice.gstIn ?? '',
    fssai: invoice.fssaiNo ?? '',
    items: _convertItemsToPrintableFormat(invoice.items, addOnItems),
    totalAmount: double.parse(invoice.totalAmt),
    tax: double.parse(invoice.taxAmt),
    discount: double.parse(invoice.disount),
    grandTotal: double.parse(invoice.totalPayable),
    advancePaid: double.parse(invoice.advanceAmt),
    balanceDue: double.parse(invoice.dueAmt),
    orderNo: invoice.orderNo,
    deliveryDate: invoice.deliveryDateTimeStr,
    customerName: Util.toTitleCase(invoice.customer.name ?? ''),
    customerPhone: invoice.customer.phoneNumber ?? '',
    customerAddress: _getCustomerAddress(invoice.customer),
    date: invoice.date,
    time: invoice.time,
  );
}

Future<List<int>> _generateNonWebPosInvoice({
  required String shopName,
  required List<String> shopAddress,
  required String gstin,
  required String fssai,
  required List<Map<String, String>> items,
  required double totalAmount,
  required double tax,
  required double discount,
  required double grandTotal,
  required double advancePaid,
  required double balanceDue,
  required String orderNo,
  required String deliveryDate,
  required String customerName,
  required String customerPhone,
  required String customerAddress,
  required String date,
  required String time,
}) async {
  final profile = await CapabilityProfile.load();
  final generator = Generator(PaperSize.mm80, profile);
  List<int> bytes = [];

  // Header Section
  bytes += generator.text(
    shopName,
    styles: const PosStyles(
      align: PosAlign.center,
      bold: true,
      height: PosTextSize.size2,
    ),
    linesAfter: 1,
  );
  for (String line in shopAddress) {
    bytes +=
        generator.text(line, styles: const PosStyles(align: PosAlign.center));
  }
  bytes += generator.text('GSTIN: $gstin',
      styles: const PosStyles(align: PosAlign.center));
  bytes += generator.text('FSSAI: $fssai',
      styles: const PosStyles(align: PosAlign.center));
  bytes += generator.feed(1);

  // Invoice Details Section
  bytes += generator.text(
    'Invoice Details',
    styles: const PosStyles(align: PosAlign.left, bold: true, underline: true),
  );
  bytes += generator.text('Order No: $orderNo');
  bytes += generator.text('Date: $date $time');
  bytes += generator.text('Delivery Date: $deliveryDate', linesAfter: 1);

  // Customer Details Section
  bytes += generator.text(
    'Customer Details',
    styles: const PosStyles(align: PosAlign.left, bold: true, underline: true),
  );
  bytes += generator.text('Name: $customerName');
  bytes += generator.text('Phone: $customerPhone');
  bytes += generator.text('Address: $customerAddress', linesAfter: 1);

  // Items Table Header
  bytes += generator.row([
    PosColumn(text: 'Item', width: 6, styles: const PosStyles(bold: true)),
    PosColumn(text: 'Qty', width: 2, styles: const PosStyles(bold: true)),
    PosColumn(text: 'Price', width: 2, styles: const PosStyles(bold: true)),
    PosColumn(text: 'Total', width: 2, styles: const PosStyles(bold: true)),
  ]);

  // Items Data
  for (Map<String, String> item in items) {
    bytes += generator.row([
      PosColumn(text: item['name'] ?? '', width: 6),
      PosColumn(text: item['qty'] ?? '', width: 2),
      PosColumn(text: item['price'] ?? '', width: 2),
      PosColumn(text: item['total'] ?? '', width: 2),
    ]);
  }
  bytes += generator.feed(1);

  // Totals Section
  bytes += generator.text('Subtotal: ${totalAmount.toStringAsFixed(2)}',
      styles: const PosStyles(align: PosAlign.right));
  bytes += generator.text('Tax: ${tax.toStringAsFixed(2)}',
      styles: const PosStyles(align: PosAlign.right));
  bytes += generator.text('Discount: ${discount.toStringAsFixed(2)}',
      styles: const PosStyles(align: PosAlign.right));
  bytes += generator.text(
    'Grand Total: ${grandTotal.toStringAsFixed(2)}',
    styles: const PosStyles(align: PosAlign.right, bold: true),
  );
  bytes += generator.feed(1);

  // Payment Section
  bytes += generator.text('Advance Paid: ${advancePaid.toStringAsFixed(2)}',
      styles: const PosStyles(align: PosAlign.right));
  bytes += generator.text(
    'Balance Due: ${balanceDue.toStringAsFixed(2)}',
    styles: const PosStyles(align: PosAlign.right, bold: true),
  );
  bytes += generator.feed(1);

  // Footer
  bytes += generator.text(
    '** Taste the Best! **',
    styles:
        const PosStyles(align: PosAlign.center, bold: true, underline: true),
  );
  bytes += generator.cut();

  return bytes;
}

List<Map<String, String>> _convertItemsToPrintableFormat(
    List<InvoiceItem> items, List<AddOnItem> addOnItems) {
  return items.map((item) {
    return {
      'name': item.name,
      'qty': item.qty,
      'price': item.rate,
      'total': item.price,
    };
  }).toList();
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
