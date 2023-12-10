import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'transactionsdate_picker_widget.dart' show TransactionsdatePickerWidget;
import 'package:flutter/material.dart';

class TransactionsdatePickerModel
    extends FlutterFlowModel<TransactionsdatePickerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
