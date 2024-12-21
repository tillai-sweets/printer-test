import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_esc_pos_utils/flutter_esc_pos_utils.dart';
import 'package:get/get.dart';
import 'package:open_filex/open_filex.dart';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
// import 'package:android_intent_plus/android_intent.dart';
// import 'package:android_intent_plus/flag.dart';
// import 'package:package_info_plus/package_info_plus.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:testprint/helper/generate_pdf.dart';

import '../gen/assets.gen.dart';
import '../helper/util.dart';
import '../message.dart';
import '../models/ModelProvider.dart';
import '../network_printer.dart';

class MobilePdfController extends GetxController {
  Rxn<pw.Document> rxPdf = Rxn<pw.Document>();
  // Rxn<List<int>?> rxNonWebPdfBytes = Rxn<List<int>?>();
  Rxn<List<int>> rxNonWebPdfBytes = Rxn<List<int>>();

  // Rxn<dynamic> rxNonWebPdfBytes = Rxn<dynamic>();
  RxString rxPdfPath = ''.obs;
  RxString rxFileName = ''.obs;
  RxString rxDownloadedFilePath = ''.obs;
  RxBool rxPdfLoading = true.obs;
  late NetworkPrinter _networkPrinter;
  List<Order> orders = [];
  List<OrderDetail> ordersDetails = [];
  List<Branch> branches = [];
  late GeneratePdf _generatePdf;
  Order? selectedOrder;
  Branch? selectedBranch;

  @override
  void onInit() {
    super.onInit();
    _networkPrinter = NetworkPrinter();
    _generatePdf = GeneratePdf();
    // _setArguments();
  }

  Future<List<Order>> _fetchOrder() async => await _fetchTypeData<Order>(
      Assets.bkpJson.order, (json) => Order.fromJson(json));
  Future<List<OrderDetail>> _fetchOrderDetail() async =>
      await _fetchTypeData<OrderDetail>(
          Assets.bkpJson.orderDet, (json) => OrderDetail.fromJson(json));

  Future<List<T>> _fetchTypeData<T>(
      String assetPath, T Function(Map<String, dynamic>) fromJson) async {
    List<T> itemList = [];
    try {
      // Load JSON data from the asset file
      String jsonData = await Util.loadAsset(assetPath);

      // Parse the JSON string into a Map
      final Map<String, dynamic> jsonMap = jsonDecode(jsonData);

      // Extract the array (key `items` should match your JSON structure)
      final List<dynamic> jsonList = jsonMap['items'];

      // Convert each JSON map into a T object
      itemList = jsonList
          .map((json) => fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      print("Error parsing item data: $e");
    }
    return itemList;
  }

  void _setArguments() async {
    if (Get.arguments != null) {
      var data = Get.arguments["pdfKey"];
      if (data != null) {
        // rxNonWebPdfBytes(data);
        rxNonWebPdfBytes(await testTicket());
      }
      data = Get.arguments["fileNameKey"];
      if (data != null) {
        rxFileName(Util.sanitizeFileName(data));
      }
    }
  }

  void _setArgumentsOld() {
    if (Get.arguments != null) {
      var data = Get.arguments["pdfKey"];
      if (data != null) {
        rxPdf(data);
      }
      data = Get.arguments["fileNameKey"];
      if (data != null) {
        rxFileName(Util.sanitizeFileName(data));
      }
    }
  }

  printPosPrinter() async {
    List<int> data = await _generatePdf.generatePosPrinterPdfData(selectedOrder,
        branch: selectedBranch);
    await _networkPrinter.printTicket(data: data, ipAddress: '192.168.1.100');
  }

  Future<bool> fetchInitData() async {
    if (branches.isEmpty) {
      branches = await _fetchBranch();
    }
    if (orders.isEmpty) {
      orders = await _fetchOrder();
    }
    if (ordersDetails.isEmpty) {
      ordersDetails = await _fetchOrderDetail();
    }
    if (orders.isNotEmpty) {
      Order order = orders.first;
      List<OrderDetail> ods = _getOrderDetails(order);
      Branch branch = branches.first;
      selectedBranch = branch;
      order = order.copyWith(orderDetails: ods);
      selectedOrder = order;
      var pdfdata =
          await _generatePdf.generateNewInvoicePdf(order, branch: branch);
      rxFileName(
          Util.sanitizeFileName('INV-${order.orderId!.toUpperCase()}.pdf'));

      await _setPdfdata(pdfdata).then((path) {
        if (path.isNotEmpty) {
          rxPdfPath(path);
          rxPdfLoading(false);
        }
      });
      // await _generateCustomPdfOld().then((path) {
      //   if (path.isNotEmpty) {
      //     rxPdfPath(path);
      //     rxPdfLoading(false);
      //   }
      // });
    }

    return true;
  }

  Future<List<Branch>> _fetchBranch() async => await _fetchTypeData<Branch>(
      Assets.bkpJson.branch, (json) => Branch.fromJson(json));
  List<OrderDetail> _getOrderDetails(Order order) {
    List<OrderDetail> list = [];
    for (OrderDetail element in ordersDetails) {
      if (element.orderId == order.id) {
        list.add(element);
      }
    }
    return list;
  }

  Future<String> _generateCustomPdf() async {
    try {
      // Save PDF to a temporary directory
      final tempDir = await getTemporaryDirectory();
      final filePath = '${tempDir.path}/${rxFileName.value}';
      final file = File(filePath);
      await file.writeAsBytes(rxNonWebPdfBytes.value ?? []);

      print('Generated PDF file path: $filePath');
      return filePath;
    } catch (e) {
      print('Error generating PDF: $e');
      throw Exception('Failed to generate PDF.');
    }
  }

  Future<String> _setPdfdata(dynamic data) async {
    try {
      // Save PDF to a temporary directory
      final tempDir = await getTemporaryDirectory();
      final filePath = '${tempDir.path}/${rxFileName.value}';
      final file = File(filePath);
      await file.writeAsBytes(await data.save());

      print('Generated PDF file path: $filePath');
      return filePath;
    } catch (e) {
      print('Error generating PDF: $e');
      throw Exception('Failed to generate PDF.');
    }
  }

  Future<String> _generateCustomPdfOld() async {
    try {
      // Save PDF to a temporary directory
      final tempDir = await getTemporaryDirectory();
      final filePath = '${tempDir.path}/${rxFileName.value}';
      final file = File(filePath);
      await file.writeAsBytes(await rxPdf.value!.save());

      print('Generated PDF file path: $filePath');
      return filePath;
    } catch (e) {
      print('Error generating PDF: $e');
      throw Exception('Failed to generate PDF.');
    }
  }

  Future<void> downloadPdf() async {
    try {
      if (rxPdfPath.value.isEmpty) {
        showErrorSnackbar(message: 'No PDF file available to download');
        return;
      }

      // Save to Downloads folder
      final directory = Directory('/storage/emulated/0/Download');
      if (!await directory.exists()) {
        directory.createSync(recursive: true);
      }

      final downloadPath = '${directory.path}/${rxFileName.value}';
      final file = File(rxPdfPath.value);
      final newFile = await file.copy(downloadPath);

      // Verify file existence and details
      if (await newFile.exists()) {
        final fileSize = await newFile.length();
        final lastModified = await newFile.lastModified();

        print('PDF downloaded successfully: $downloadPath');
        print('File Size: ${fileSize} bytes');
        print('Last Modified: $lastModified');

        rxDownloadedFilePath(downloadPath);
        showSuccessSnackbar(
            message: 'PDF downloaded successfully to $downloadPath');
      } else {
        print('File not found after copying.');
        showErrorSnackbar(message: 'File not found after downloading.');
      }
    } catch (e) {
      print('Error downloading PDF: $e');
      showErrorSnackbar(message: 'Error downloading PDF: $e');
    }
  }

  // Future<void> openInFileManagerOld() async {
  //   if (rxDownloadedFilePath.value.isNotEmpty) {
  //     try {
  //       final file = File(rxDownloadedFilePath.value);

  //       if (await file.exists()) {
  //         // Get the directory containing the file
  //         final directoryPath = file.parent.path;

  //         // Retrieve the package name
  //         final packageInfo = await PackageInfo.fromPlatform();
  //         final packageName = packageInfo.packageName;

  //         // Use the FileProvider to share a file within the directory
  //         final authority = "$packageName.fileprovider";
  //         final contentUri = Uri.parse(
  //             'content://$authority${file.path.replaceFirst('/storage/emulated/0', '')}');

  //         print('Opening folder via file: $contentUri');

  //         // Create an intent to open the file manager
  //         final intent = AndroidIntent(
  //           action: 'android.intent.action.VIEW',
  //           data: contentUri.toString(),
  //           type: '*/*', // Open file to reveal its folder
  //           flags: <int>[Flag.FLAG_GRANT_READ_URI_PERMISSION],
  //         );

  //         await intent.launch();
  //       } else {
  //         showErrorSnackbar(message: 'File not found to open.');
  //       }
  //     } catch (e) {
  //       print('Error opening file manager: $e');
  //       showErrorSnackbar(message: 'Error opening file manager: $e');
  //     }
  //   } else {
  //     showErrorSnackbar(message: 'No file available to locate folder.');
  //   }
  // }

  Future<void> openInFileManager() async {
    if (rxDownloadedFilePath.value.isNotEmpty) {
      try {
        final file = File(rxDownloadedFilePath.value);

        if (await file.exists()) {
          var pdfBytes = await rxPdf.value!.save();
          await file.writeAsBytes(pdfBytes);

          // Open the file using the installed PDF viewer
          final result = await OpenFilex.open(file.path);

          // Check the result (optional)
          if (result.type == ResultType.done) {
            print('PDF opened successfully.');
          } else {
            print('Error opening PDF: ${result.message}');
          }
        } else {
          showErrorSnackbar(message: 'File not found to open.');
        }
      } catch (e) {
        print('Error opening file manager: $e');
        showErrorSnackbar(message: 'Error opening file manager: $e');
      }
    } else {
      showErrorSnackbar(message: 'No file available to locate folder.');
    }
  }

  Future<void> printFile() async {
    if (rxDownloadedFilePath.value.isNotEmpty) {
      try {
        final file = File(rxDownloadedFilePath.value);

        if (await file.exists()) {
          Uint8List pdfBytes = await rxPdf.value!.save();
          String? printMsg = await _networkPrinter.printPdf(
              pdfData: pdfBytes, ipAddress: '192.168.1.100');
          if (printMsg != null) {
            if (printMsg.contains('Success')) {
              showSuccessSnackbar(message: printMsg);
            } else {
              showErrorSnackbar(message: printMsg);
            }
          }
        } else {
          showErrorSnackbar(message: 'File not found to open.');
        }
      } catch (e) {
        print('Error opening file manager: $e');
        showErrorSnackbar(message: 'Error opening file manager: $e');
      }
    } else {
      showErrorSnackbar(message: 'No file available to locate folder.');
    }
  }

  // Future<void> _openInFileManagerOld() async {
  //   if (rxDownloadedFilePath.value.isNotEmpty) {
  //     try {
  //       final file = File(rxDownloadedFilePath.value);

  //       if (await file.exists()) {
  //         // Retrieve package name dynamically
  //         final packageInfo = await PackageInfo.fromPlatform();
  //         final packageName = packageInfo.packageName;

  //         // Create a content URI using FileProvider
  //         final authority = "$packageName.fileprovider";
  //         final contentUri = Uri.parse(
  //             'content://${authority}${file.path.replaceFirst('/storage/emulated/0', '')}');
  //         print('opening url $contentUri');

  //         // Create intent to open the file
  //         final intent = AndroidIntent(
  //           action: 'android.intent.action.VIEW',
  //           data: contentUri.toString(),
  //           type: 'application/pdf',
  //           flags: <int>[Flag.FLAG_GRANT_READ_URI_PERMISSION],
  //         );

  //         await intent.launch();
  //       } else {
  //         showErrorSnackbar(message: 'File not found to open.');
  //       }
  //     } catch (e) {
  //       print('Error opening file manager: $e');
  //       showErrorSnackbar(message: 'Error opening file manager: $e');
  //     }
  //   } else {
  //     showErrorSnackbar(message: 'No file available to open in file manager.');
  //   }
  // }

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
}
