import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'group_details_widget.dart' show GroupDetailsWidget;
import 'package:flutter/material.dart';

class GroupDetailsModel extends FlutterFlowModel<GroupDetailsWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<TransactionCategoryViewRow>? exisitingCategories;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Button widget.
  List<TransactionGroupRow>? deletedGroup;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
