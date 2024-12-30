import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'category_widget_widget.dart' show CategoryWidgetWidget;
import 'package:flutter/material.dart';

class CategoryWidgetModel extends FlutterFlowModel<CategoryWidgetWidget> {
  ///  Local state fields for this component.

  TransactionsRow? currenTransaction;

  String? currentCategory = 'null';

  String? columnView = 'null';

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Update Row(s)] action in Container widget.
  List<TransactionsRow>? newCategory;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
