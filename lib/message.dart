import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void showSuccessSnackbar({
  String? title,
  required String message,
  Duration? duration = const Duration(seconds: 10),
}) {
  title ??= 'Success';
  showCustomSnackbar(
    title: title,
    message: message,
    duration: duration,
    isSuccess: true,
  );
}

void showErrorSnackbar({
  String? title,
  required String message,
  Duration? duration = const Duration(seconds: 10),
}) {
  title ??= 'Failed';
  showCustomSnackbar(
    title: title,
    message: message,
    duration: duration,
    isSuccess: false,
  );
}

void showCustomSnackbar({
  required String title,
  required String message,
  bool isSuccess = true,
  Duration? duration = const Duration(seconds: 3),
  VoidCallback? closePressed,
}) {
  Get.snackbar(
    title,
    message,
    backgroundColor: isSuccess ? Colors.green : Colors.red,
    messageText: Text(
      message,
      style: TextStyle(color: Colors.white),
    ),
    duration: duration,
    snackPosition: SnackPosition.BOTTOM,
    icon: isSuccess ? const Icon(Icons.check) : const Icon(Icons.error),
    shouldIconPulse: false,
    borderRadius: 0.0,
    margin: const EdgeInsets.all(0.0),
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    overlayColor: Colors.transparent,
    barBlur: 0,
    dismissDirection: DismissDirection.horizontal,
    mainButton: TextButton(
      onPressed: () {
        Get.back();
        closePressed ?? ();
      },
      child: Text(
        'Close',
        style: TextStyle(color: Colors.white),
      ),
    ),
  );

  Future<Uint8List> _loadImageFromAssets(String path) async {
    final ByteData data = await rootBundle.load(path);
    return data.buffer.asUint8List();
  }
}
