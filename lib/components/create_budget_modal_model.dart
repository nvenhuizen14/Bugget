import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_budget_modal_widget.dart' show CreateBudgetModalWidget;
import 'package:flutter/material.dart';

class CreateBudgetModalModel extends FlutterFlowModel<CreateBudgetModalWidget> {
  ///  Local state fields for this component.

  double? budgetlimit = 1.0;

  DateTime? budgetStartDate;

  DateTime? budgetEndDate;

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Slider widget.
  double? sliderValue;
  DateTime? datePicked;
  // State field(s) for DropDown2 widget.
  String? dropDown2Value;
  FormFieldController<String>? dropDown2ValueController;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  BudgetRow? newBudgetItem;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
