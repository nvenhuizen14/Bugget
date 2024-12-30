import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'groups_n_categories_widget.dart' show GroupsNCategoriesWidget;
import 'package:flutter/material.dart';

class GroupsNCategoriesModel extends FlutterFlowModel<GroupsNCategoriesWidget> {
  ///  Local state fields for this component.

  TransactionType? type;

  String? headline = 'null';

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in IconButton widget.
  List<TransactionCategoryViewRow>? groupCategories;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
