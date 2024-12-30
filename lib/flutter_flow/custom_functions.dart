import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

DateTime? todayminus14days() {
  // today - 14 days
  // find date range for today - 14 days
  final DateTime now = DateTime.now();
  final DateTime today = DateTime(now.year, now.month, now.day);
  final DateTime todayMinus14Days = today.subtract(Duration(days: 14));
  return todayMinus14Days;
}

DateTime? todayminus7Days() {
  // today minus 7 days
  // find date range for today - 7 days
  final DateTime now = DateTime.now();
  final DateTime today = DateTime(now.year, now.month, now.day);
  final DateTime todayMinus7Days = today.subtract(Duration(days: 7));
  return todayMinus7Days;
}

DateTime? lastWeek() {
  // find today minus 7 days and today minus 14 days
  // find date range for today - 7 days
  final DateTime now = DateTime.now();
  final DateTime today = DateTime(now.year, now.month, now.day);
  final DateTime todayMinus7Days = today.subtract(Duration(days: 7));
  final DateTime todayMinus14Days = today.subtract(Duration(days: 14));
  return todayMinus7Days;
}

DateTimeRange? thisWeek() {
  // Find the date range between today and 7 days ago
  // find today minus 7 days and today minus 14 days
  // find date range for today - 7 days
  final DateTime now = DateTime.now();
  final DateTime today = DateTime(now.year, now.month, now.day);
  final DateTime todayMinus7Days = today.subtract(Duration(days: 7));
  final DateTime todayMinus14Days = today.subtract(Duration(days: 14));
  return DateTimeRange(start: todayMinus7Days, end: today);
}

DateTimeRange? findCurrentMonthsDateRange() {
  // Find the range of days in the current month
  final now = DateTime.now();
  final start = DateTime(now.year, now.month, 1);
  final end = DateTime(now.year, now.month + 1, 0);
  return DateTimeRange(start: start, end: end);
}

double? screenWidth(double? fractionOfScreenWidth) {
  // get fraction of screen width using mediaQuery.of and supplying late to context
  late MediaQueryData mediaQueryData;
  double screenWidth = 0.0;
  try {
    mediaQueryData = MediaQueryData.fromView(WidgetsBinding.instance.window);
    screenWidth = mediaQueryData.size.width * (fractionOfScreenWidth ?? 1.0);
  } catch (e) {
    print('Error getting screen width: $e');
  }
  return screenWidth;
}

DateTime? futureDate(
  DateTime? startDate,
  int? minutes,
  int? seconds,
  int? hours,
  int? days,
) {
  // create a new variable for the result
  DateTime result;

  // set initial value from startDate input parameter.
  //If startDate is null then use current Timestamp as StartDate
  result = startDate ?? (DateTime.now());

  // null saftey checks for all input parameters
  int addMinutes = 0 + (minutes ?? 0);
  int addSeconds = 0 + (seconds ?? 0);
  int addHours = 0 + (hours ?? 0);
  int addDays = 0 + (days ?? 0);

//calculate future date by adding all input durations to the StartDate stored in result variable

  result = result.add(Duration(
      seconds: addSeconds,
      minutes: addMinutes,
      hours: addHours,
      days: addDays));

//return final result with the future date

  return result;
}

DateTimeRange currentMonth() {
  // find what month it is
  final now = DateTime.now();
  final startOfMonth = DateTime(now.year, now.month, 1);
  final endOfMonth = DateTime(now.year, now.month + 1, 0);
  return DateTimeRange(start: startOfMonth, end: endOfMonth);
}

String? setState(
  String? stateVariableQuickChartUrl,
  String? quickChartUrl,
) {
  // setState(() {     var stateVariableQuickChartUrl = quickChartUrl;
  var stateVariableQuickChartUrl = quickChartUrl;
  return quickChartUrl;
}

bool isInSameMonth(
  DateTime? datetimeToExtractMonthFrom1,
  DateTime? datetimeToExtractMonthFrom2,
) {
  // Extract the months from two datetimes and test if they are the same
  if (datetimeToExtractMonthFrom1 == null ||
      datetimeToExtractMonthFrom2 == null) {
    return false;
  }
  return datetimeToExtractMonthFrom1.month ==
          datetimeToExtractMonthFrom2.month &&
      datetimeToExtractMonthFrom1.year == datetimeToExtractMonthFrom2.year;
}

List<CalendarDayStruct> getCalendarMonth(DateTime inputDate) {
  List<CalendarDayStruct> calendar = [];

  // Start by finding the first day of the current month
  DateTime firstOfMonth = DateTime(inputDate.year, inputDate.month, 1);

  // Find the last day of the current month
  DateTime lastOfMonth = DateTime(inputDate.year, inputDate.month + 1, 0);

  // Find the first Monday on or before the first of the month
  DateTime startCalendar =
      firstOfMonth.subtract(Duration(days: firstOfMonth.weekday - 1));

  // Find the last Sunday after the end of the month
  DateTime endCalendar = lastOfMonth.weekday == 7
      ? lastOfMonth
      : lastOfMonth.add(Duration(days: 7 - lastOfMonth.weekday));

  // Populate the calendar
  for (DateTime date = startCalendar;
      date.isBefore(endCalendar.add(Duration(days: 1)));
      date = date.add(Duration(days: 1))) {
    bool isPreviousMonth = date.isBefore(firstOfMonth);
    bool isNextMonth = date.isAfter(lastOfMonth);

    CalendarDayStruct dayStruct = CalendarDayStruct(
        calendarDate: date,
        isPreviousMonth: isPreviousMonth,
        isNextMonth: isNextMonth);

    calendar.add(dayStruct);
  }

  return calendar;
}

DateTime getNextMonthDateTime(DateTime inputDate) {
  int year = inputDate.year;
  int month = inputDate.month;

  if (month == 12) {
    year++;
    month = 1;
  } else {
    month++;
  }
  return DateTime(year, month);
}

DateTime getLastMonthDateTime(DateTime inputDate) {
  int year = inputDate.year;
  int month = inputDate.month;

  if (month == 1) {
    year--;
    month = 12;
  } else {
    month--;
  }
  return DateTime(year, month);
}

List<DateTime> generateTimeSegments(
  DateTime selectedDate,
  int zoomLevel,
) {
  List<DateTime> timeSegments = [];
  int interval;

  // Set interval based on zoom level
  switch (zoomLevel) {
    case 1:
      interval = 60; // 1-hour intervals
      break;
    case 2:
      interval = 30; // 30-minute intervals
      break;
    case 3:
      interval = 15; // 15-minute intervals
      break;
    case 4:
      interval = 5; // 5-minute intervals
      break;
    default:
      interval = 15; // Default to 15-minute intervals
  }

  for (int hour = 0; hour < 24; hour++) {
    for (int minute = 0; minute < 60; minute += interval) {
      timeSegments.add(DateTime(selectedDate.year, selectedDate.month,
          selectedDate.day, hour, minute));
    }
  }
  return timeSegments;
}
