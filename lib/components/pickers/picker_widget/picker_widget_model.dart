import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'picker_widget_widget.dart' show PickerWidgetWidget;
import 'package:flutter/material.dart';

class PickerWidgetModel extends FlutterFlowModel<PickerWidgetWidget> {
  ///  Local state fields for this component.

  TransactionsRow? currenTransaction;

  String? currentCategory = 'null';

  String? columnView = 'null';

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Update Row] action in Container widget.
  List<TransactionsRow>? newCategory;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
