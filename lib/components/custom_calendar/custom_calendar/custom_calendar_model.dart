import '/components/custom_calendar/calendar_weekday/calendar_weekday_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'custom_calendar_widget.dart' show CustomCalendarWidget;
import 'package:flutter/material.dart';

class CustomCalendarModel extends FlutterFlowModel<CustomCalendarWidget> {
  ///  Local state fields for this component.

  DateTime? selectedDate;

  DateTime? inputDate;

  ///  State fields for stateful widgets in this component.

  // Model for calendarWeekday component.
  late CalendarWeekdayModel calendarWeekdayModel1;
  // Model for calendarWeekday component.
  late CalendarWeekdayModel calendarWeekdayModel2;
  // Model for calendarWeekday component.
  late CalendarWeekdayModel calendarWeekdayModel3;
  // Model for calendarWeekday component.
  late CalendarWeekdayModel calendarWeekdayModel4;
  // Model for calendarWeekday component.
  late CalendarWeekdayModel calendarWeekdayModel5;
  // Model for calendarWeekday component.
  late CalendarWeekdayModel calendarWeekdayModel6;
  // Model for calendarWeekday component.
  late CalendarWeekdayModel calendarWeekdayModel7;

  @override
  void initState(BuildContext context) {
    calendarWeekdayModel1 = createModel(context, () => CalendarWeekdayModel());
    calendarWeekdayModel2 = createModel(context, () => CalendarWeekdayModel());
    calendarWeekdayModel3 = createModel(context, () => CalendarWeekdayModel());
    calendarWeekdayModel4 = createModel(context, () => CalendarWeekdayModel());
    calendarWeekdayModel5 = createModel(context, () => CalendarWeekdayModel());
    calendarWeekdayModel6 = createModel(context, () => CalendarWeekdayModel());
    calendarWeekdayModel7 = createModel(context, () => CalendarWeekdayModel());
  }

  @override
  void dispose() {
    calendarWeekdayModel1.dispose();
    calendarWeekdayModel2.dispose();
    calendarWeekdayModel3.dispose();
    calendarWeekdayModel4.dispose();
    calendarWeekdayModel5.dispose();
    calendarWeekdayModel6.dispose();
    calendarWeekdayModel7.dispose();
  }
}
