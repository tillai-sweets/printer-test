import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';
import 'package:flutter_esc_pos_utils/flutter_esc_pos_utils.dart';
import 'package:flutter_esc_pos_network/flutter_esc_pos_network.dart';
import 'package:printing/printing.dart';

import 'gen/assets.gen.dart';
import 'message.dart';
import 'package:image/image.dart' as img;

class NetworkPrinter {
  Future<List<int>> testTicketWithImage() async {
    final profile = await CapabilityProfile.load();
    final generator = Generator(PaperSize.mm80, profile);
    List<int> bytes = [];

    // Add header text
    bytes += generator.text(
      'Tillai Bakery',
      styles: const PosStyles(
        align: PosAlign.center,
        bold: true,
        height: PosTextSize.size2,
        width: PosTextSize.size2,
      ),
      linesAfter: 1,
    );

    // Load the image from assets
    final ByteData data = await rootBundle.load(Assets.images.tillaiLogo.path);
    final Uint8List imgBytes = data.buffer.asUint8List();

    // Decode the image using the `image` package
    final img.Image? decodedImage = img.decodeImage(imgBytes);

    if (decodedImage != null) {
      // Convert the image to raster format for ESC/POS printers
      final img.Image resizedImage = img.copyResize(decodedImage,
          width: 384); // Resize for 80mm printer width
      bytes += generator.imageRaster(
        resizedImage,
        align: PosAlign.center,
      );
    } else {
      throw Exception("Failed to decode image.");
    }

    // Add footer text
    bytes += generator.text('Thank you for your visit!',
        styles: const PosStyles(align: PosAlign.center), linesAfter: 2);

    bytes += generator.cut();
    return bytes;
  }

  Future<String?> printTicketWithImage({
    required String ipAddress,
  }) async {
    final data = await testTicketWithImage();
    final printer = PrinterNetworkManager(ipAddress);
    final connect = await printer.connect();

    if (connect == PosPrintResult.success) {
      final result = await printer.printTicket(data);
      printer.disconnect();
      return result.msg;
    } else {
      print('Connection Error: ${connect.msg}');
    }
    return null;
  }

//Assets.images.tillaiLogo.path

  Future<List<int>> testTicket() async {
    final profile = await CapabilityProfile.load();
    final generator = Generator(PaperSize.mm80, profile);
    List<int> bytes = [];

    bytes += generator.text(
        'Regular: aA bB cC dD eE fF gG hH iI jJ kK lL mM nN oO pP qQ rR sS tT uU vV wW xX yY zZ');
    bytes += generator.text('Special 1: àÀ èÈ éÉ ûÛ üÜ çÇ ôÔ',
        styles: const PosStyles(codeTable: 'CP1252'));
    bytes += generator.text('Special 2: blåbærgrød',
        styles: const PosStyles(codeTable: 'CP1252'));

    bytes += generator.text('Bold text', styles: const PosStyles(bold: true));
    bytes +=
        generator.text('Reverse text', styles: const PosStyles(reverse: true));
    bytes += generator.text('Underlined text',
        styles: const PosStyles(underline: true), linesAfter: 1);
    bytes += generator.text('Align left',
        styles: const PosStyles(align: PosAlign.left));
    bytes += generator.text('Align center',
        styles: const PosStyles(align: PosAlign.center));
    bytes += generator.text('Align right',
        styles: const PosStyles(align: PosAlign.right), linesAfter: 1);

    bytes += generator.row([
      PosColumn(
        text: 'col3',
        width: 3,
        styles: const PosStyles(align: PosAlign.center, underline: true),
      ),
      PosColumn(
        text: 'col6',
        width: 6,
        styles: const PosStyles(align: PosAlign.center, underline: true),
      ),
      PosColumn(
        text: 'col3',
        width: 3,
        styles: const PosStyles(align: PosAlign.center, underline: true),
      ),
    ]);

    bytes += generator.text('Text size 200%',
        styles: const PosStyles(
          height: PosTextSize.size2,
          width: PosTextSize.size2,
        ));

    // Print barcode
    final List<int> barData = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 4];
    bytes += generator.barcode(Barcode.upcA(barData));

    bytes += generator.feed(2);
    bytes += generator.cut();
    return bytes;
  }

  Future<String?> printTicket({
    required List<int> data,
    required String ipAddress,
  }) async {
    final printer = PrinterNetworkManager(ipAddress);
    final connect = await printer.connect();

    if (connect == PosPrintResult.success) {
      final result = await printer.printTicket(data);
      printer.disconnect();
      return result.msg;
    } else {
      showErrorSnackbar(message: 'Connection Error: ${connect.msg}');
    }
    return null;
  }

  // Future<void> printTicket(List<int> ticket) async {
  //   final printer = PrinterNetworkManager('192.168.1.100');
  //   PosPrintResult connect = await printer.connect();
  //   inspect(connect);
  //   if (connect == PosPrintResult.success) {
  //     PosPrintResult printing = await printer.printTicket(ticket);

  //     print(printing.msg);
  //     printer.disconnect();
  //   }
  // }

  Future<img.Image> _convertUiImageToImgImage(ui.Image image) async {
    final ByteData? byteData =
        await image.toByteData(format: ui.ImageByteFormat.rawRgba);
    if (byteData == null) {
      throw Exception('Failed to get ByteData from the image.');
    }

    final Uint8List rgbaBytes = byteData.buffer.asUint8List();

    // Convert raw RGBA bytes to img.Image
    return img.Image.fromBytes(
      width: image.width,
      height: image.height,
      bytes: rgbaBytes.buffer,
      format: img.Format.uint8,
      numChannels: 4,
    );
  }

  Future<List<int>> _convertImageToEscPos(ui.Image image) async {
    final profile = await CapabilityProfile.load();
    final generator = Generator(PaperSize.mm80, profile);
    List<int> bytes = [];

    // Convert ui.Image to img.Image
    final img.Image rasterImage = await _convertUiImageToImgImage(image);

    bytes += generator.imageRaster(
      rasterImage,
      align: PosAlign.center,
    );

    bytes += generator.feed(2);
    bytes += generator.cut();

    return bytes;
  }

  Future<List<int>> convertPdfToEscPos(Uint8List pdfData) async {
    List<int> bytes = [];
    final profile = await CapabilityProfile.load();
    final generator = Generator(PaperSize.mm80, profile);

    try {
      // Use await-for to process each rasterized PDF page
      await for (final pdfRaster in Printing.raster(pdfData, dpi: 200)) {
        final ui.Image pageImage = await pdfRaster.toImage();
        bytes += await _convertImageToEscPos(pageImage);
      }

      bytes += generator.feed(2);
      bytes += generator.cut();
    } catch (e) {
      showErrorSnackbar(message: 'Error converting PDF to ESC/POS: $e');
      print('Error converting PDF to ESC/POS: $e');
    }
    return bytes;
  }

  Future<String?> printPdf({
    required Uint8List pdfData,
    required String ipAddress,
  }) async {
    final List<int> data = await convertPdfToEscPos(pdfData);

    if (data.isNotEmpty) {
      return await printTicket(data: data, ipAddress: ipAddress);
    } else {
      showErrorSnackbar(message: 'Failed to generate printable data.');
    }
    return null;
  }
}
