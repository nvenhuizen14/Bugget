import '/components/custom_calendar/time_block/time_block_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'date_details_widget.dart' show DateDetailsWidget;
import 'package:flutter/material.dart';

class DateDetailsModel extends FlutterFlowModel<DateDetailsWidget> {
  ///  Local state fields for this component.

  int? zoomLevel = 1;

  int? itemSpacing = 20;

  ///  State fields for stateful widgets in this component.

  // Models for timeBlock dynamic component.
  late FlutterFlowDynamicModels<TimeBlockModel> timeBlockModels;

  @override
  void initState(BuildContext context) {
    timeBlockModels = FlutterFlowDynamicModels(() => TimeBlockModel());
  }

  @override
  void dispose() {
    timeBlockModels.dispose();
  }
}
