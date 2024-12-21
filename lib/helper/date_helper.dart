import 'dart:math';
import 'package:amplify_flutter/amplify_flutter.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'enum.dart';

class DateHelper {
  static String dateFormat = 'dd/MM/yyyy';
  static String dateTimeFormat = 'dd MMM hh:mm a';
  static String uiDateFormat = 'ddMMMyyyy';
  static String misServiceDateTimeFormat = 'dd/MM/yyyy HH:mm:ss';

  static String convertDateTimeToString({
    required DateTime dateTime,
    String? outputFormat,
  }) {
    try {
      outputFormat ??= dateFormat;
      DateFormat outputFormatter = DateFormat(outputFormat);
      return outputFormatter.format(dateTime);
    } catch (e) {
      throw Exception(': $e');
    }
  }

  static int getCurrentYear() => DateTime.now().year;

  static TemporalDate getCurrentTemporalDate1() {
    DateTime dateTime = DateTime.now();

    TemporalDate convertedDate = TemporalDate(dateTime);
    print(
        'getCurrentTemporalDate dateTime $dateTime convertedDate:$convertedDate');
    return convertedDate;
  }

  static TemporalDate getCurrentTemporalDate() {
    DateTime dateTime = DateTime.now(); // Local date and time
    DateTime istDateTime = dateTime
        .add(const Duration(hours: 5, minutes: 30)); // Adjust to IST (UTC+5:30)

    TemporalDate convertedDate = TemporalDate(istDateTime);
    print(
        'getCurrentTemporalDateInIST dateTime $dateTime convertedDate: $convertedDate');
    return convertedDate;
  }

  static String convertDateString({
    required String dateString,
    String? inputFormat,
    String? outputFormat,
  }) {
    try {
      inputFormat ??= dateFormat;
      outputFormat ??= dateFormat;
      DateFormat inputFormatter = DateFormat(inputFormat);
      DateFormat outputFormatter = DateFormat(outputFormat);
      DateTime dateTime = inputFormatter.parse(dateString);
      return outputFormatter.format(dateTime);
    } catch (e) {
      throw Exception('dateParsingErrorMsg: $e');
    }
  }

  static DateTime convertStringToDateTime({
    required String dateString,
    String? inputFormat,
  }) {
    try {
      inputFormat ??= dateFormat;
      DateFormat inputFormatter = DateFormat(inputFormat);
      DateTime dateTime = inputFormatter.parse(dateString);
      return dateTime;
    } catch (e) {
      throw Exception('dateParsingErrorMsg: $e');
    }
  }

  static DateTime convertStringToDateTimeWithSpecificFormat({
    required String dateString,
    required String inputFormat,
    required String outputFormat,
  }) {
    try {
      // Parsing the date string to DateTime using the input format
      DateFormat inputFormatter = DateFormat(inputFormat);
      DateTime dateTime = inputFormatter.parse(dateString);

      // Ensuring the DateTime corresponds to the output format
      DateFormat outputFormatter = DateFormat(outputFormat);
      String formattedDate = outputFormatter.format(dateTime);
      DateTime finalDateTime = outputFormatter.parse(formattedDate);

      return finalDateTime;
    } catch (e) {
      throw Exception('dateParsingErrorMsg: $e');
    }
  }

  static String getUiDateTimeView(TemporalDateTime? dateTime) {
    return formatTemporalDateTime(dateTime, 'dd MMM yyyy hh:mm a');
  }

  static String getUiFormatDateView(TemporalDate? date) {
    if (date == null) {
      return '';
    }
    String str = formatTemporalDate(date, 'dd MMM yyyy');
    return str;
  }

  static String getUiFormaTimeView(TemporalTime? time) {
    if (time == null) {
      return '';
    }
    String str = formatTemporalTime(time);
    return str;
  }

  static String getUiDateView(TemporalDateTime? dateTime) {
    if (dateTime == null) return '';
    return formatTemporalDateTime(dateTime, 'dd MMM yyyy');
  }

  static String formatTemporalDateTime(
      TemporalDateTime? dateTime, String format) {
    if (dateTime == null) {
      return ''; // or any default value you prefer
    }
    final parsedDateTime = DateTime.parse(dateTime.toString());
    final formatter = DateFormat(format);
    return formatter.format(parsedDateTime);
  }

  static String formatTemporalDate(TemporalDate? date, String format) {
    if (date == null) {
      return ''; // or any default value you prefer
    }
    final parsedDateTime = DateTime.parse(date.toString());
    final formatter = DateFormat(format);
    return formatter.format(parsedDateTime);
  }

  static TemporalDateTime convertToTemporalDateTime(DateTime dateTime) {
    final year = dateTime.year;
    final month = dateTime.month;
    final day = dateTime.day;
    final temporalDateTime = TemporalDateTime(DateTime.utc(
      year,
      month,
      day,
      dateTime.hour,
      dateTime.minute,
    ));
    return temporalDateTime;
  }

  static TemporalDateTime mergeTemporalDateAndTimeFormat(
      {required TemporalDate date, required TemporalTime time}) {
    // Get the DateTime from TemporalDate
    DateTime datePart = date.getDateTime();

    // Get the TimeOfDay from TemporalTime
    DateTime timePart = time.getDateTime();

    // Combine the date and time
    DateTime combinedDateTime = DateTime(
      datePart.year,
      datePart.month,
      datePart.day,
      timePart.hour,
      timePart.minute,
      timePart.second,
      timePart.millisecond,
      timePart.microsecond,
    );
    return TemporalDateTime(combinedDateTime);
  }

  static String mergeTemporalDateAndTimeInUiFormat(
      {required TemporalDate date, required TemporalTime time}) {
    return '${getUiFormatDateView(date)} ${getUiFormaTimeView(time)}';
  }

  static TemporalDateTime getCurrentTemporalDateTime() {
    return convertToTemporalDateTime(DateTime.now());
  }

  static String getCurrentDateTimeInUiFormatStr() {
    return getUiDateTimeView(getCurrentTemporalDateTime());
  }

  static TemporalDate convertToTemporalDate(DateTime dateTime) {
    print('incoming date: $dateTime');
    String formattedDate = dateTime.toIso8601String().split('T').first;

    TemporalDate temporalDate = TemporalDate.fromString(formattedDate);
    print('outgoing date: $temporalDate');

    return temporalDate;
  }

  static TimeOfDay convertToTimeOfDay(TemporalTime temporalTime) {
    int hour = temporalTime.getDateTime().hour;
    int minute = temporalTime.getDateTime().minute;
    return TimeOfDay(hour: hour, minute: minute);
  }

  static TemporalTime convertToTemporalTime(TimeOfDay timeOfDay) {
    final now = DateTime.now().toUtc(); // Get current UTC time
    print('getSelectedDateTime selectedTime $timeOfDay');
    DateTime dateTime = DateTime.utc(
      now.year,
      now.month,
      now.day,
      timeOfDay.hour,
      timeOfDay.minute,
    );
    print('getSelectedDateTime dateTime $timeOfDay');
    TemporalTime time = TemporalTime(dateTime);
    print('convertToTemporalTime time $time');
    return time;
  }

  static TemporalTime generateRandomTemporalTime() {
    TimeOfDay randomTimeOfDay = generateRandomTimeOfDay();
    return convertToTemporalTime(randomTimeOfDay);
  }

  static TimeOfDay generateRandomTimeOfDay() {
    Random random = Random();
    int hour = random.nextInt(24);
    int minute = random.nextInt(60);
    return TimeOfDay(hour: hour, minute: minute);
  }

  static TemporalTime convertToTemporalTime1(TimeOfDay timeOfDay) {
    print('convertToTemporalTime timeOfDay $timeOfDay');
    TemporalTime time = TemporalTime(getSelectedDateTime(timeOfDay));
    print('convertToTemporalTime time $time');
    return time;
  }

  static String formattoUIDate(DateTime dateTime,
      {String format = 'dd MMM yyyy'}) {
    return DateFormat(format).format(dateTime);
  }

  static String formatTemporalTime(TemporalTime temporalTime) {
    int hour = temporalTime.getDateTime().hour;
    int minute = temporalTime.getDateTime().minute;

    String formattedTime = DateFormat('hh:mm a').format(
      DateTime(0, 1, 1, hour, minute),
    );

    return formattedTime;
  }

  static DateTime getSelectedDateTime(TimeOfDay selectedTime) {
    final now = DateTime.now();
    DateTime dateTime = DateTime(
      now.year,
      now.month,
      now.day,
      selectedTime.hour,
      selectedTime.minute,
    );
    return dateTime;
  }

  static int calculateDaysDifference(
      {required TemporalDateTime start, required TemporalDateTime end}) {
    // Convert TemporalDateTime to DateTime
    DateTime startDate = start.getDateTimeInUtc();
    DateTime endDate = end.getDateTimeInUtc();

    // Calculate the difference
    Duration difference = endDate.difference(startDate);

    // Return the difference in days
    return difference.inDays;
  }

  static DateTime modifiedNewDate(int days) {
    DateTime now = DateTime.now();
    DateTime modifiedDate = now.subtract(Duration(days: days));
    return modifiedDate;
  }

  static TemporalDateTime modifiedNewTemporalDateTime({
    required int days,
    DateTime? datetime,
  }) {
    DateTime now = datetime ?? DateTime.now();
    DateTime modifiedDate = now.subtract(Duration(days: days));
    return convertToTemporalDateTime(modifiedDate);
  }

  static double calculateTimeDifferenceInHours(
      TemporalTime time1, TemporalTime time2) {
    // Convert TemporalTime to DateTime with an arbitrary date
    DateTime dateTime1 = time1.getDateTime();
    DateTime dateTime2 = time2.getDateTime();

    // Calculate the difference in hours
    Duration difference = dateTime1.difference(dateTime2);

    // Convert the difference to hours and return
    return difference.inMinutes / 60;
  }

  static bool isDate1AfterDate2(
      TemporalDateTime date1, TemporalDateTime date2) {
    // Convert TemporalDateTime to DateTime
    DateTime dateTime1 = date1.getDateTimeInUtc();
    DateTime dateTime2 = date2.getDateTimeInUtc();

    // Check if dateTime1 is after dateTime2
    return dateTime1.isAfter(dateTime2);
  }

  static bool isTime1AfterTime2(TemporalTime time1, TemporalTime time2) {
    // Convert TemporalTime to DateTime with an arbitrary date
    DateTime dateTime1 = time1.getDateTime();
    DateTime dateTime2 = time2.getDateTime();

    // Check if dateTime1 is after dateTime2
    return dateTime1.isAfter(dateTime2);
  }

  static DateTime convertTemporalToDatetime(TemporalDate temporalDate) {
    return DateTime(
      temporalDate.getDateTime().year,
      temporalDate.getDateTime().month,
      temporalDate.getDateTime().day,
      temporalDate.getDateTime().hour,
      temporalDate.getDateTime().minute,
    );
  }

  static TemporalDateTime convertTemporalDateToTemporalDatetime(
      TemporalDate temporalDate) {
    DateTime dateTime = DateTime(
      temporalDate.getDateTime().year,
      temporalDate.getDateTime().month,
      temporalDate.getDateTime().day,
      temporalDate.getDateTime().hour,
      temporalDate.getDateTime().minute,
    );
    return TemporalDateTime(dateTime);
  }

  static TemporalDate convertTemporalDatetimeToTemporalDate(
      TemporalDateTime temporalDateTime) {
    DateTime dateTime = temporalDateTime.getDateTimeInUtc();
    return convertToTemporalDate(dateTime);
  }

  static DateComparisonType compareTemporalDateTime(
      TemporalDateTime temporalDateTime) {
    DateTime currentDate = DateTime.now();
    DateTime inputDate = temporalDateTime.getDateTimeInUtc();

    // Remove time part by setting hour, minute, second, and millisecond to 0
    currentDate =
        DateTime(currentDate.year, currentDate.month, currentDate.day);
    inputDate = DateTime(inputDate.year, inputDate.month, inputDate.day);

    if (inputDate.isBefore(currentDate)) {
      return DateComparisonType.pastDate;
    } else if (inputDate.isAfter(currentDate)) {
      return DateComparisonType.upcomingDate;
    } else {
      return DateComparisonType.sameDate;
    }
  }

  static DateComparisonType compareTemporalDate(TemporalDate temporalDate) {
    DateTime currentDate = DateTime.now();
    DateTime inputDate = convertTemporalToDatetime(temporalDate);

    // Remove time part by setting hour, minute, second, and millisecond to 0
    currentDate =
        DateTime(currentDate.year, currentDate.month, currentDate.day);
    inputDate = DateTime(inputDate.year, inputDate.month, inputDate.day);

    if (inputDate.isBefore(currentDate)) {
      return DateComparisonType.pastDate;
    } else if (inputDate.isAfter(currentDate)) {
      return DateComparisonType.upcomingDate;
    } else {
      return DateComparisonType.sameDate;
    }
  }

  static Map<String, dynamic> getDeliveryDateRange() {
    DateTime currentDate = DateTime.now();
    DateTime fromDate;
    DateTime toDate;

    // Define delivery time as 10:00 AM in local time
    TemporalTime deliveryTimeFrom =
        convertToTemporalTime(const TimeOfDay(hour: 9, minute: 59));
    TemporalTime deliveryTimeTo =
        convertToTemporalTime(const TimeOfDay(hour: 10, minute: 1));

    if (currentDate.hour < 20) {
      // Before 8 PM: From today to tomorrow
      fromDate = currentDate;
      toDate = currentDate.add(const Duration(days: 1));
    } else {
      // After 8 PM: From tomorrow to the day after tomorrow
      fromDate = currentDate.add(const Duration(days: 1));
      toDate = currentDate.add(const Duration(days: 2));
    }

    // Convert to UTC while keeping the intended local date
    DateTime fromDateAsUtc =
        DateTime.utc(fromDate.year, fromDate.month, fromDate.day);
    DateTime toDateAsUtc = DateTime.utc(toDate.year, toDate.month, toDate.day);

    print(
        'dateIssue fromDate:$fromDateAsUtc TemporalFromDate:${TemporalDate(fromDateAsUtc)}');
    return {
      'fromDate': TemporalDate(fromDateAsUtc),
      'toDate': TemporalDate(toDateAsUtc),
      'deliveryTimeTo': deliveryTimeTo,
      'deliveryTimeFrom': deliveryTimeFrom,
    };
  }

  static Map<String, dynamic> getDeliveryDateRangeOld() {
    DateTime currentDate = DateTime.now();
    DateTime fromDate;
    DateTime toDate;

    // Define delivery time as 10:00 AM in local time
    TemporalTime deliveryTimeFrom =
        convertToTemporalTime(const TimeOfDay(hour: 09, minute: 59));
    TemporalTime deliveryTimeTo =
        convertToTemporalTime(const TimeOfDay(hour: 10, minute: 1));

    if (currentDate.hour < 20) {
      // Before 12 PM: From today to tomorrow
      fromDate = currentDate.toLocal();
      toDate = currentDate.add(const Duration(days: 1)).toLocal();
    } else {
      // After 12 PM: From tomorrow to the day after tomorrow
      fromDate = currentDate.add(const Duration(days: 1)).toLocal();
      toDate = currentDate.add(const Duration(days: 2)).toLocal();
    }
    print(
        'dateIssue fromDate:$fromDate TemporalFromDate:${TemporalDate(fromDate)}');
    return {
      'fromDate': TemporalDate(fromDate),
      'toDate': TemporalDate(toDate),
      'deliveryTimeTo': deliveryTimeTo,
      'deliveryTimeFrom': deliveryTimeFrom,
    };
  }

  static DateTime setTimeToDateTime({
    required DateTime dateTime,
    int hour = 0,
    int minute = 0,
    int second = 0,
  }) =>
      DateTime(
        dateTime.year,
        dateTime.month,
        dateTime.day,
        hour,
        minute,
        second,
        dateTime.millisecond,
        dateTime.microsecond,
      );

  static bool isSameDates({
    required DateTime dateTime1,
    required DateTime dateTime2,
  }) {
    bool isSame = DateTime(
      dateTime1.year,
      dateTime1.month,
      dateTime1.day,
      0,
      0,
      0,
      0,
      0,
    ).isAtSameMomentAs(DateTime(
      dateTime2.year,
      dateTime2.month,
      dateTime2.day,
      0,
      0,
      0,
      0,
      0,
    ));
    print('isSameDates $dateTime1 $dateTime2  sameDay:$isSame');
    return isSame;
  }

  String getAppbarDate() {
    DateTime now = DateTime.now();
    return DateFormat('EEEE, d').format(now);
  }

  static int getCurrentDayIndex() {
    int weekday = DateTime.now().weekday; // Monday is 1, Sunday is 7
    int value = weekday %
        7; // Adjust so that Sunday is 0, Monday is 1, ..., Saturday is 6
    print('getCurrentDayIndex $value $weekday');
    return value;
  }

  static List<DateTime> getCurrentWeekDates() {
    DateTime now = DateTime.now();
    int differenceToSunday = now.weekday % 7;
    DateTime lastSunday = now.subtract(Duration(days: differenceToSunday));
    List<DateTime> weekDates = [];
    for (int i = 0; i < 7; i++) {
      weekDates.add(lastSunday.add(Duration(days: i)).copyWith(
          hour: 0, minute: 0, second: 0, millisecond: 0, microsecond: 0));
    }
    return weekDates;
  }
}
