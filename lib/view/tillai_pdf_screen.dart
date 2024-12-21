import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:testprint/controller/mobile_pdf_controller.dart';
import 'package:testprint/view/common_widget.dart';

class TillaiPdfScreen extends StatelessWidget {
  final MobilePdfController controller = Get.put(MobilePdfController());
  TillaiPdfScreen({super.key});

  @override
  Widget build(BuildContext context) => _widgetView();

  FutureBuilder _widgetView() => appFutureBuilder<bool>(
        () => controller.fetchInitData(),
        (context, snapshot) => _body(),
        loaderWidget: const CircularProgressIndicator(),
      );
  Obx _body() => Obx(
        () => Scaffold(
          backgroundColor: Colors.white,
          appBar: appBar(
            // titleText: 'Custom PDF Viewer',
            actions: [
              if (!controller.rxPdfLoading.value)
                iconWidget(
                  Icons.download,
                  onPressed: controller.downloadPdf,
                ),
              const SizedBox(width: 24),
              iconWidget(
                Icons.print,
                onPressed: () {
                  // controller.printFile();
                  controller.printPosPrinter();
                },
              ),
              const SizedBox(width: 24),
              // if (controller.rxDownloadedFilePath.value.isNotEmpty)
              //   iconWidget(
              //     Icons.folder_open,
              //     onPressed: controller.openInFileManager,
              //   ),
            ],
          ),
          body: _pdfbodyOld(),
        ),
      );

  _pdfbody() => controller.rxPdfLoading.value
      ? const Center(child: CircularProgressIndicator())
      : controller.rxPdfPath.value.isNotEmpty
          ? Center(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 32),
                width: Get.width / 2,
                child: PDFView(
                  filePath: controller.rxPdfPath.value,
                  enableSwipe: true,
                  swipeHorizontal: true,
                  autoSpacing: false,
                  pageFling: true,
                  onRender: (pages) {
                    debugPrint('PDF rendered with $pages pages.');
                  },
                  onError: (error) {
                    debugPrint('Error displaying PDF: $error');
                  },
                  onPageChanged: (page, total) {
                    debugPrint('Page changed: $page/$total');
                  },
                ),
              ),
            )
          : const Center(
              child: Text('Failed to load PDF'),
            );
  _pdfbodyOld() => controller.rxPdfLoading.value
      ? const Center(child: CircularProgressIndicator())
      : controller.rxPdfPath.value.isNotEmpty
          ? Center(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 32),
                width: Get.width / 2,
                child: SfPdfViewer.file(
                  File(controller.rxPdfPath.value),
                ),
              ),
            )
          : const Center(
              child: Text('Failed to load PDF'),
            );
  @override
  Widget buildView() => _widgetView();
}
