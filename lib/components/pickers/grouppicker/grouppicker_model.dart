import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'grouppicker_widget.dart' show GrouppickerWidget;
import 'package:flutter/material.dart';

class GrouppickerModel extends FlutterFlowModel<GrouppickerWidget> {
  ///  Local state fields for this component.

  TransactionsRow? currenTransaction;

  String? currentGroup = 'null';

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Update Row] action in Container widget.
  List<TransactionsRow>? newGroup;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
