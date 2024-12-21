import 'package:flutter/services.dart';

class Util {
  static String toTitleCase(String text) {
    if (text.isEmpty) {
      return text;
    }

    return text.split(' ').map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ');
  }

  static bool isStringNullOrEmpty(String? value) {
    return value == null || value.isEmpty;
  }

  static String formatStrAmount(String? value) {
    if (value == null || value.isEmpty) return '';
    // Step 1: Format the amount with 2 decimal places
    double amount = double.parse(value.trim());
    String formattedAmount = amount.toStringAsFixed(2);

    // Step 2: Use a regular expression to add commas for thousand separators
    RegExp regExp = RegExp(r'\B(?=(\d{3})+(?!\d))');
    String result = formattedAmount.replaceAllMapped(regExp, (match) => ',');

    return result;
  }

  static String splitText(
    String text, {
    int limit = 50,
  }) {
    List<String> words = text.split(' ');
    StringBuffer buffer = StringBuffer();
    String currentLine = '';

    for (String word in words) {
      if (currentLine.length + word.length + 1 <= limit) {
        if (currentLine.isEmpty) {
          currentLine = word;
        } else {
          currentLine += ' $word';
        }
      } else {
        // Add the current line to the buffer
        buffer.writeln(currentLine);
        // Start a new line with the current word
        currentLine = word;
      }
    }

    // Add the last line to the buffer
    if (currentLine.isNotEmpty) {
      buffer.write(currentLine);
    }

    return buffer.toString();
  }

  static String displayTextWithEllipsis(String text,
      {int maxLength = 50, bool cutFromCenter = false}) {
    if (text.length <= maxLength) {
      return text;
    } else {
      if (cutFromCenter) {
        int halfLength = (maxLength / 2).floor();
        // int remainingLength = maxLength - 2; // Reserve 2 characters for ".."
        String start = text.substring(0, halfLength);
        String end = text.substring(text.length - halfLength, text.length);
        return '$start..$end';
      } else {
        return '${text.substring(0, maxLength - 2)}..';
      }
    }
  }

  static Future<String> loadAsset(String path) async {
    String assetJson = await rootBundle.loadString(path);
    print('loadAsset $assetJson');
    return assetJson;
  }

  static String formatAmount(double amount) {
    // Step 1: Format the amount with 2 decimal places
    String formattedAmount = amount.toStringAsFixed(2);

    // Step 2: Use a regular expression to add commas for thousand separators
    RegExp regExp = RegExp(r'\B(?=(\d{3})+(?!\d))');
    String result = formattedAmount.replaceAllMapped(regExp, (match) => ',');

    return result;
  }

  static double getItemAmountWithTax({
    required double itemAmount,
    double taxPercentage = 18,
  }) {
    double multiplicationFactor = 1 + (taxPercentage / 100);
    double totalAmount = itemAmount * multiplicationFactor;
    print(
        'getItemAmountWithTax itemAmount:$itemAmount taxPercentage:$taxPercentage multiplicationFactor:$multiplicationFactor totalAmount:$totalAmount');

    return totalAmount;
  }

  static String removeFileExtension(String filename) {
    // Check if the filename contains a dot for the extension
    int lastDotIndex = filename.lastIndexOf('.');
    if (lastDotIndex == -1) {
      // No dot found, return the filename as is
      return filename;
    }
    // Remove everything after the last dot, including the dot itself
    return filename.substring(0, lastDotIndex);
  }

  static String sanitizeFileName(String fileName) {
    // Replace all special characters with an underscore
    final safeFileName = fileName.replaceAll(RegExp(r'[<>:"/\\|?*]'), '_');
    // Trim whitespace and return the sanitized file name
    return safeFileName.trim();
  }

  static bool isValidIpAddress(String ipAddress) {
    // Regular expression for a valid IPv4 address
    final ipRegex = RegExp(
      r'^(25[0-5]|2[0-4][0-9]|[0-1]?[0-9][0-9]?)\.' // First Octet
      r'(25[0-5]|2[0-4][0-9]|[0-1]?[0-9][0-9]?)\.' // Second Octet
      r'(25[0-5]|2[0-4][0-9]|[0-1]?[0-9][0-9]?)\.' // Third Octet
      r'(25[0-5]|2[0-4][0-9]|[0-1]?[0-9][0-9]?)$', // Fourth Octet
    );

    return ipRegex.hasMatch(ipAddress);
  }
}
