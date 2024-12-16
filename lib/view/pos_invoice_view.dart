import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

pw.Column _headerSection({
  required Uint8List logoBytes,
}) =>
    pw.Column(children: [
      pw.Image(
        pw.MemoryImage(logoBytes),
        height: 65,
        fit: pw.BoxFit.contain,
      ),
    ]);

Future<dynamic> generateInvoiceView({
  required Uint8List logoBytes,
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
                logoBytes: logoBytes,
              ),
              pw.Divider(thickness: 0.5, height: 0.5),
              _text('Tillai Sweets and Bakery'),
              _text('Sample Print'),
            ],
          ),
        );
      },
    ),
  );
  return pdf;
}

bool _isStringNullOrEmpty(String? value) => (value == null || value.isEmpty);
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
