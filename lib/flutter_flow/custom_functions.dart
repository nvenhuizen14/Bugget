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

String newUniqueKey() {
  // create a unique key using this formula intxint%int+'id' = string
  final int x = math.Random().nextInt(1000000);
  final int y = math.Random().nextInt(1000000);
  final int z = math.Random().nextInt(1000000);
  return '$x$y%$z' + 'id';
}

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

DateTime? findMonthly(DateTime? startDate) {
  // find one month from startDate
  if (startDate == null) return null;
  final oneMonthLater =
      DateTime(startDate.year, startDate.month + 1, startDate.day);
  return oneMonthLater;
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
