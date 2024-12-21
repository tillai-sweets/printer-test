import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pdf/pdf.dart';

import 'package:pdf/widgets.dart' as pw;
import 'package:testprint/helper/util.dart';

import '../../model/new_order_model.dart';
import '../models/ModelProvider.dart';
import 'enum_value.dart';

pw.Column _headerSection({
  required InvoiceModel invoice,
  required Uint8List logoBytes,
  required Uint8List fssaiBytes,
}) =>
    pw.Column(children: [
      pw.Image(
        pw.MemoryImage(logoBytes),
        height: 65,
        fit: pw.BoxFit.contain,
      ),
      ...invoice.shopAdrress.map((line) => _text(line, fontSize: 8)),
      pw.Align(
        alignment: pw.Alignment.center,
        child: _text('GSTIN : ${invoice.gstIn ?? ''}', fontSize: 8),
      ),
      pw.Row(mainAxisAlignment: pw.MainAxisAlignment.center, children: [
        pw.Image(
          pw.MemoryImage(fssaiBytes),
          width: 22,
          height: 22,
        ),
        pw.SizedBox(width: 2),
        _text(invoice.fssaiNo ?? '', fontSize: 8),
      ])
      // pw.Row(
      //   mainAxisSize: pw.MainAxisSize.max,
      //   children: [
      //     pw.Expanded(child: _labelValue('GSTIN : ', invoice.gstIn ?? '')),
      //     pw.SizedBox(width: 8),
      //     pw.Expanded(
      //         child: pw.Row(children: [
      //       pw.Image(
      //         pw.MemoryImage(fssaiBytes),
      //         width: 22,
      //         height: 22,
      //       ),
      //       pw.SizedBox(width: 2),
      //       _text(invoice.fssaiNo ?? '', fontSize: 8),
      //     ])),
      //   ],
      // ),
    ]);
pw.Column _headerSection1({
  required InvoiceModel invoice,
  required Uint8List logoBytes,
  required Uint8List fssaiBytes,
}) =>
    pw.Column(children: [
      pw.Row(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Expanded(
            child: pw.Image(
              pw.MemoryImage(logoBytes),
              // width: 90,
              fit: pw.BoxFit.contain,
            ),
          ),
          pw.SizedBox(width: 4),
          pw.Expanded(
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                ...invoice.shopAdrress
                    .map((line) => _text(line, fontSize: 5.5)),
              ],
            ),
          ),
        ],
      ),
      pw.Row(
        mainAxisSize: pw.MainAxisSize.max,
        children: [
          pw.Expanded(child: _labelValue('GSTIN : ', invoice.gstIn ?? '')),
          pw.SizedBox(width: 8),
          pw.Expanded(
              child: pw.Row(children: [
            pw.Image(
              pw.MemoryImage(fssaiBytes),
              width: 22,
              height: 22,
            ),
            pw.SizedBox(width: 2),
            _text(invoice.fssaiNo ?? '', fontSize: 8),
          ])),
        ],
      ),
    ]);
_height(double? height) => pw.SizedBox(height: height ?? 10);
pw.Column _invoiceHeaderSection({required InvoiceModel invoice}) {
  double fontSize = 8.3;
  return pw.Column(children: [
    pw.Row(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Expanded(
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              _text('${invoice.date} ${invoice.time}',
                  fontWeight: pw.FontWeight.bold, fontSize: fontSize),
              _height(2),
              _labelValue('Order No:', invoice.orderNo,
                  labelFontsize: fontSize, valueFontsize: fontSize),
              _height(2),
              _labelValue('OFN:', invoice.orderFormNumber ?? 'N/A',
                  labelFontsize: fontSize, valueFontsize: fontSize),
            ],
          ),
        ),
        pw.SizedBox(width: 4),
        pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            _text(
              'Invoice To:',
              fontWeight: pw.FontWeight.bold,
              fontSize: fontSize,
            ),
            _height(2),
            _text(
              Util.toTitleCase(invoice.customer.name ?? ''),
              fontSize: fontSize,
            ),
            _height(2),
            _text(
              invoice.customer.phoneNumber ?? '',
              fontSize: fontSize,
            ),
          ],
        ),
      ],
    ),
    pw.SizedBox(height: 2),
    _labelValue('Delivery:', invoice.deliveryDateTimeStr,
        labelFontsize: 8.5, valueFontsize: 8.5),
    pw.SizedBox(height: 2),
    _labelValue('Address:', _getCustomerAddress(invoice.customer),
        labelFontsize: 6.5, valueFontsize: 6.5),
  ]);
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

Future<dynamic> generatePosInvoiceView({
  required InvoiceModel invoice,
  required Uint8List logoBytes,
  required Uint8List fssaiBytes,
  required List<AddOnItem> addOnItems,
  required Uint8List rupeelogoBytes,
  required Uint8List boldRupeelogoBytes,
  required bool isWeb,
}) async {
  final pdf = pw.Document();

  // Page setup for POS Printer (80mm width)
  const pageFormat = PdfPageFormat(80 * PdfPageFormat.mm, double.infinity,
      marginAll: 5 * PdfPageFormat.mm);

  pdf.addPage(
    pw.Page(
      pageFormat: pageFormat,
      build: (pw.Context context) {
        return pw.Padding(
          padding: const pw.EdgeInsets.only(left: 0),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              _headerSection(
                  invoice: invoice,
                  logoBytes: logoBytes,
                  fssaiBytes: fssaiBytes),
              pw.Divider(thickness: 0.5, height: 0.5),
              _invoiceHeaderSection(invoice: invoice),
              pw.Divider(thickness: 0.5, height: 0.5),

              pw.Table(
                // border: pw.TableBorder.all(color: PdfColors.grey300, width: 0.5),
                children: [
                  pw.TableRow(children: [
                    _tableHeader('Item', fontSize: 8),
                    _tableHeader('Qty', fontSize: 8),
                    _tableHeader('Price', fontSize: 8),
                    _tableHeader('Total', fontSize: 8),
                  ]),
                  ...invoice.items.map((item) {
                    return pw.TableRow(
                      children: [
                        _tableData(
                          '',
                          widget: _getItemDescWidget(item, addOnItems),
                          alignment: pw.Alignment.centerLeft,
                        ),
                        // _tableData(Util.toTitleCase(item.name), fontSize: 8),
                        _tableData(item.qty),
                        // _tableData(item.rate, fontSize: 8),
                        _tableData(item.isAddOnItem
                            ? (item.weightStr == '-' ? '' : item.price)
                            : ''),
                        // _tableData(item.isAddOnItem
                        //     ? (item.weightStr == '-' ? '' : item.price)
                        //     : item.rate.capitalizeFirst!),
                        _tableData(item.price),
                      ],
                    );
                  }),
                ],
              ),
              pw.SizedBox(height: 2),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  _text('Total:', fontSize: 7),
                  _amountText(
                    amount: invoice.totalAmt,
                    rupeelogoBytes: rupeelogoBytes,
                    boldRupeelogoBytes: boldRupeelogoBytes,
                    fontSize: 7,
                    rupeeHeight: 7,
                  )
                  // _text(invoice.totalAmt,
                  //     fontSize: 9, fontWeight: pw.FontWeight.bold),
                ],
              ),
              pw.Divider(thickness: 0.5, height: .5),

              // GST Details Section
              _text('GST Details:',
                  fontWeight: pw.FontWeight.bold, fontSize: 6),
              pw.Table(
                // border: pw.TableBorder.all(color: PdfColors.grey300, width: 0.5),
                children: [
                  pw.TableRow(children: [
                    _tableHeader('GST %', fontSize: 6),
                    _tableHeader('CGST', fontSize: 6),
                    _tableHeader('UTGST', fontSize: 6),
                    _tableHeader('Total Tax', fontSize: 6),
                    pw.SizedBox(width: 25),
                  ]),
                  pw.TableRow(children: [
                    _text(' 18%', fontSize: 6),
                    // _tableData('18%',
                    //     fontSize: 6, alignment: pw.Alignment.centerLeft),

                    _amountText(
                        amount: Util.formatStrAmount(invoice.cgstAmt),
                        fontSize: 6,
                        rupeeHeight: 6,
                        rupeelogoBytes: rupeelogoBytes,
                        boldRupeelogoBytes: boldRupeelogoBytes,
                        mainAxisAlignment: pw.MainAxisAlignment.start),
                    _amountText(
                        amount: Util.formatStrAmount(invoice.utstAmt),
                        fontSize: 6,
                        rupeeHeight: 6,
                        rupeelogoBytes: rupeelogoBytes,
                        boldRupeelogoBytes: boldRupeelogoBytes,
                        mainAxisAlignment: pw.MainAxisAlignment.start),
                    _amountText(
                        amount: Util.formatStrAmount(invoice.taxAmt),
                        fontSize: 6,
                        rupeeHeight: 6,
                        rupeelogoBytes: rupeelogoBytes,
                        boldRupeelogoBytes: boldRupeelogoBytes,
                        mainAxisAlignment: pw.MainAxisAlignment.start),
                    pw.SizedBox(width: 25),
                    // _tableData(invoice.cgstAmt,
                    //     fontSize: 6, alignment: pw.Alignment.centerLeft),
                    // _tableData(invoice.utstAmt,
                    //     fontSize: 6, alignment: pw.Alignment.centerLeft),
                    // _tableData(invoice.taxAmt,
                    //     fontSize: 6, alignment: pw.Alignment.centerLeft),
                  ]),
                ],
              ),
              pw.Divider(thickness: 0.5, height: .5),

              // Summary Section
              // pw.Row(
              //   mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              //   children: [
              //     _text('Total:', fontSize: 9, fontWeight: pw.FontWeight.bold),
              //     _amountText(
              //         amount: invoice.totalAmt,
              //         rupeelogoBytes: rupeelogoBytes,
              //         boldRupeelogoBytes: boldRupeelogoBytes,
              //         fontSize: 9,
              //         bold: true)
              //     // _text(invoice.totalAmt,
              //     //     fontSize: 9, fontWeight: pw.FontWeight.bold),
              //   ],
              // ),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  _text('Discount:', fontSize: 8),
                  _amountText(
                    amount: invoice.disount,
                    rupeelogoBytes: rupeelogoBytes,
                    boldRupeelogoBytes: boldRupeelogoBytes,
                  )
                  // _text(invoice.disount, fontSize: 8),
                ],
              ),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  _text('Grand Total:',
                      fontSize: 9, fontWeight: pw.FontWeight.bold),
                  _amountText(
                    amount: invoice.totalPayable,
                    rupeelogoBytes: rupeelogoBytes,
                    boldRupeelogoBytes: boldRupeelogoBytes,
                    fontSize: 9,
                    bold: true,
                  ),
                  // _text(invoice.totalPayable,
                  //     fontSize: 9, fontWeight: pw.FontWeight.bold),
                ],
              ),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  _text('Advance Amount:', fontSize: 8),
                  _amountText(
                    amount: invoice.advanceAmt,
                    rupeelogoBytes: rupeelogoBytes,
                    boldRupeelogoBytes: boldRupeelogoBytes,
                    fontSize: 8,
                  ),
                  // _text(invoice.advanceAmt, fontSize: 8),
                ],
              ),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  _text('Due Amount:',
                      fontSize: 10, fontWeight: pw.FontWeight.bold),
                  _amountText(
                      amount: invoice.dueAmt,
                      rupeelogoBytes: rupeelogoBytes,
                      boldRupeelogoBytes: boldRupeelogoBytes,
                      fontSize: 10,
                      bold: true),
                  // _text(invoice.dueAmt,
                  //     fontSize: 10, fontWeight: pw.FontWeight.bold),
                ],
              ),
              pw.Divider(thickness: 0.5, height: .5),

              // Footer
              pw.Align(
                alignment: pw.Alignment.center,
                child: pw.Text(
                  '** Taste the Best! **',
                  style: pw.TextStyle(
                    fontSize: 11,
                    fontStyle: pw.FontStyle.italic,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
  if (isWeb) {
    return await pdf.save();
  } else {
    return pdf;
  }
}

pw.Row _amountText(
        {required String amount,
        required Uint8List rupeelogoBytes,
        required Uint8List boldRupeelogoBytes,
        bool bold = false,
        bool formattedText = false,
        PdfColor? color,
        double? fontSize,
        pw.MainAxisAlignment? mainAxisAlignment,
        double? rupeeHeight}) =>
    pw.Row(
      mainAxisAlignment: mainAxisAlignment ?? pw.MainAxisAlignment.end,
      crossAxisAlignment: pw.CrossAxisAlignment.center,
      children: [
        pw.Image(
          pw.MemoryImage(bold ? boldRupeelogoBytes : rupeelogoBytes),
          height: rupeeHeight ?? 8,
        ),
        pw.Text(
          formattedText ? amount : Util.formatStrAmount(amount),
          style: pw.TextStyle(
            fontWeight: bold ? pw.FontWeight.bold : pw.FontWeight.normal,
            fontSize: fontSize ?? 8,
            color: color,
          ),
        ),
      ],
    );
// Helper for label and value pairs
pw.Widget _labelValue(String label, String value,
        {double? labelFontsize,
        double? valueFontsize,
        pw.CrossAxisAlignment? crossAxisAlignment}) =>
    pw.Row(
      crossAxisAlignment: crossAxisAlignment ?? pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          label,
          style: pw.TextStyle(
              fontSize: labelFontsize ?? 7, fontWeight: pw.FontWeight.bold),
        ),
        pw.SizedBox(width: 4),
        pw.Text(
          value,
          style: pw.TextStyle(fontSize: valueFontsize ?? 7),
        ),
      ],
    );

// Helper for table headers
pw.Widget _tableHeader(String label, {double fontSize = 8}) => pw.Container(
      padding: const pw.EdgeInsets.all(2),
      child: _text(label, fontSize: fontSize, fontWeight: pw.FontWeight.bold),
    );

// Helper for table data
// pw.Widget _tableData(String value, {double fontSize = 8}) => pw.Container(
//       padding: const pw.EdgeInsets.all(2),
//       child: pw.Text(
//         value,
//         style: pw.TextStyle(fontSize: fontSize),
//       ),
//     );

pw.Container _tableData(String value,
    {pw.Widget? widget,
    pw.TextOverflow? overflow,
    bool capitalizeFirst = true,
    pw.AlignmentGeometry? alignment,
    double fontSize = 7}) {
  return pw.Container(
    padding: const pw.EdgeInsets.all(2),
    child: pw.Align(
      alignment: alignment ?? pw.Alignment.center,
      child: widget ??
          _text(
            capitalizeFirst ? value.capitalizeFirst! : value,
            color: PdfColors.black,
            fontSize: fontSize,
            overflow: overflow,
            // style: pw.TextStyle(
            //   color: PdfColors.black,
            //   fontSize: fontSize,
            // ),
          ),
    ),
  );
}

// Helper for generic text
// pw.Text _text(String text,
//     {double fontSize = 8, pw.FontWeight fontWeight = pw.FontWeight.normal}) {
//   return pw.Text(
//     text,
//     style: pw.TextStyle(fontSize: fontSize, fontWeight: fontWeight),
//   );
// }

bool _isStringNullOrEmpty(String? value) => Util.isStringNullOrEmpty(value);
pw.Text _text(
  String text, {
  double? fontSize,
  pw.FontWeight? fontWeight,
  pw.FontStyle? fontStyle,
  PdfColor? color,
  pw.TextOverflow? overflow,
}) =>
    pw.Text(
      text,
      overflow: overflow,
      style: pw.TextStyle(
        fontSize: fontSize ?? 7,
        fontStyle: fontStyle ?? pw.FontStyle.normal,
        fontWeight: fontWeight ?? pw.FontWeight.normal,
        color: color,
      ),
    );
AddOnItem? _getAddOnItem(AddOnType type, List<AddOnItem> addonItems) {
  for (AddOnItem element in addonItems) {
    if (element.addOnType == type) {
      return element;
    }
  }
  return null;
}

_getItemDescWidget(InvoiceItem item, List<AddOnItem> addOnItems) {
  String firstLineAddon = '';
  String secLineAddon = '';
  String thirdLineAddon = '';
  String flavourName = '';
  if (item.isAddOnItem) {
    // if (!_isStringNullOrEmpty(item.addOnItemCode)) {
    //   if (item.addOnItemCode == 'AD-01') {
    //     firstLineAddon = ' - ${item.weight}gm';
    //   }
    // }
  } else {
    firstLineAddon += getDieteryType(item.dieteryType).capitalizeFirst!;
    if (item.shape != null) {
      firstLineAddon += ', ${(getShapeType(item.shape)).capitalizeFirst!}';
    }
    // else {
    //   firstLineAddon += ',${item.weight}kg';
    // }
    // Favour not required
    if (item.flavour != null) {
      // secLineAddon = (item.flavour!.name ?? '').capitalizeFirst!;
      flavourName = item.flavour!.name ?? '';
      if (flavourName.toLowerCase().contains("No Fla".toLowerCase())) {
        flavourName = '';
      }
    }
    if (!_isStringNullOrEmpty(item.customerMessage)) {
      thirdLineAddon = Util.splitText(item.customerMessage!.trim());
    }
  }
  OrderDetail? orderDetail = item.orderDetail;
  AddOnItem? fondantItem, phosheetItem, dollDecorationItem;
  // String fondantName, photosheetName;
  if (orderDetail != null) {
    if ((orderDetail.fondantCake ?? 0) > 0) {
      fondantItem = _getAddOnItem(
          ((orderDetail.fondantType ?? FondantType.SEMI) == FondantType.SEMI
              ? AddOnType.SEMIFONDANT1KG
              : AddOnType.FULLFONDANT1KG),
          addOnItems);
    }
    if ((orderDetail.photoSheets ?? 0) > 0) {
      phosheetItem = _getAddOnItem(
          ((orderDetail.photoSheets ?? PhotoSheetType.HALF) ==
                  PhotoSheetType.HALF
              ? AddOnType.PHOTOSHEETHALF
              : AddOnType.PHOTOSHEETFULL),
          addOnItems);
    }
    if (orderDetail.dollOtherDecoration ?? false) {
      dollDecorationItem = _getAddOnItem(AddOnType.DOLLANDOTHER, addOnItems);
    }
  }
  double textFontSize = 8.5;

  return pw.SizedBox(
    width: 100,
    child: pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        // pw.Row(
        //   children: [
        //     _text(Util.displayTextWithEllipsis(Util.toTitleCase(item.name),
        //         maxLength: 40, cutFromCenter: true)),
        //     _text(firstLineAddon),
        //   ],
        // ),
        _text(
            Util.displayTextWithEllipsis(
                '${Util.toTitleCase('$flavourName ${item.name}')} ${item.isAddOnItem ? '' : '${item.weight}kg'} ',
                maxLength: 40,
                cutFromCenter: true),
            fontSize: textFontSize),

        _text(firstLineAddon, fontSize: 8),
        if (!_isStringNullOrEmpty(secLineAddon))
          _text(secLineAddon,
              fontStyle: pw.FontStyle.normal, fontSize: textFontSize),

        if (fondantItem != null)
          _text(
              fondantItem.addOnType == AddOnType.SEMIFONDANT1KG
                  ? 'Semi Fondant'
                  : 'Full Fondant',
              fontSize: textFontSize),
        if (phosheetItem != null && orderDetail != null)
          _text(
              '${phosheetItem.addOnType == AddOnType.PHOTOSHEETHALF ? 'Photo Sheet Half' : 'Photo Sheet Full'} (${orderDetail.photoSheets ?? 0})',
              fontSize: textFontSize),
        if (dollDecorationItem != null && orderDetail != null)
          _text('Doll Decoration', fontSize: textFontSize),

        if (!_isStringNullOrEmpty(thirdLineAddon))
          _text(thirdLineAddon, fontSize: 7, fontWeight: pw.FontWeight.bold),
      ],
    ),
  );
}
