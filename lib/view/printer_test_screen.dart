import 'dart:typed_data';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import '../network_printer.dart';

class PrinterTestScreen extends StatefulWidget {
  const PrinterTestScreen({Key? key}) : super(key: key);

  @override
  State<PrinterTestScreen> createState() => _PrinterTestScreenState();
}

class _PrinterTestScreenState extends State<PrinterTestScreen> {
  late NetworkPrinter _networkPrinter;
  String? _pdfFilePath;

  @override
  void initState() {
    super.initState();
    _networkPrinter = NetworkPrinter();
    _generateAndViewPdf();
  }

  Future<void> _generateAndViewPdf() async {
    try {
      // Generate List<int> data from testTicketWithImage
      final List<int> ticketBytes = await _networkPrinter.testTicketWithImage();

      // Convert List<int> to Uint8List
      final Uint8List pdfData = Uint8List.fromList(ticketBytes);

      // Save Uint8List as a temporary PDF file
      final pdfFilePath = await _savePdfToFile(pdfData);

      // Update the state to show the PDF
      setState(() {
        _pdfFilePath = pdfFilePath;
      });
    } catch (e) {
      print("Error generating or viewing PDF: $e");
    }
  }

  Future<String> _savePdfToFile(Uint8List pdfData) async {
    final directory = await getTemporaryDirectory();
    final pdfFile = File('${directory.path}/ticket_preview.pdf');
    await pdfFile.writeAsBytes(pdfData, flush: true);
    return pdfFile.path;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tillai Pos Print Preview'),
      ),
      body: Center(
        child: _pdfFilePath != null
            ? PDFView(
                filePath: _pdfFilePath,
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
