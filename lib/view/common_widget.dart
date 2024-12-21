import 'package:flutter/material.dart';
import 'package:get/get.dart';

FutureBuilder appFutureBuilder<T>(
  Future<T> Function() futureFunction,
  Widget Function(BuildContext context, AsyncSnapshot<T> snapshot)
      successWidget, {
  Widget? loaderWidget,
}) {
  loaderWidget ??= const CircularProgressIndicator();
  return FutureBuilder<T>(
    future: futureFunction(),
    builder: (BuildContext context, AsyncSnapshot<T> snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return loaderWidget!;
      } else if (snapshot.hasError) {
        return Center(child: Text('Error: ${snapshot.error}'));
      } else {
        return successWidget(context, snapshot);
      }
    },
  );
}

AppBar appBar({
  bool showbackArrow = false,
  Widget? leadingWidget,
  List<Widget>? actions,
  String? titleText,
  VoidCallback? leadingWidgetPressed,
  double? toolbarHeight = 90,
}) {
  leadingWidget = leadingWidget ??
      iconWidget(
        Icons.arrow_back,
        size: 20,
        onPressed: () {
          if (leadingWidgetPressed != null) {
            leadingWidgetPressed();
          } else {
            Get.back();
          }
        },
      );

  return AppBar(
    leadingWidth: 130,
    backgroundColor: Colors.transparent,
    toolbarHeight: toolbarHeight,
    leading: leadingWidget,
    title: Align(
      alignment: Alignment.center,
      child: Text(
        titleText ?? '',
      ),
    ),
    actions: actions,
  );
}

InkWell iconWidget(
  IconData iconData, {
  double size = 24,
  Color? color,
  VoidCallback? onPressed,
}) =>
    InkWell(
        onTap: onPressed,
        child: Icon(iconData, size: size, color: color ?? Colors.grey));

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
  title ??= 'Failure';
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
      style: TextStyle(color: Colors.black),
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
        style: TextStyle(color: Colors.black),
      ),
    ),
  );
}
