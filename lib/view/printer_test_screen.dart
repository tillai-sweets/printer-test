import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

import '../gen/assets.gen.dart';
import '../network_printer.dart';
import 'pos_invoice_view.dart';

class PrinterTestScreen extends StatefulWidget {
  const PrinterTestScreen({super.key});

  @override
  State<PrinterTestScreen> createState() => _PrinterTestScreenState();
}

class _PrinterTestScreenState extends State<PrinterTestScreen> {
  late NetworkPrinter _networkPrinter;

  @override
  void initState() {
    super.initState();
    _networkPrinter = NetworkPrinter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Tillai Pos Print'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Tillai test print',
            ),
            ElevatedButton(
                onPressed: () async {
                  // var data = await _networkPrinter.testTicketWithImage();
                  await _networkPrinter.printTicketWithImage(
                      ipAddress: '192.168.1.100');
                  // var logoBytes =
                  //     await _loadImageFromAssets(Assets.images.tillaiLogo.path);
                  // var pdfBytes =
                  //     await generateInvoiceView(logoBytes: logoBytes);
                  // _networkPrinter.printPdf(
                  //     pdfData: pdfBytes, ipAddress: '192.168.1.100');
                },
                child: Text('Print'))
          ],
        ),
      ),
    );
  }

  Future<Uint8List> _loadImageFromAssets(String path) async {
    final ByteData data = await rootBundle.load(path);
    return data.buffer.asUint8List();
  }
}
