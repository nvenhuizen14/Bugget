import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import 'transaction_rules_widget.dart' show TransactionRulesWidget;
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class TransactionRulesModel extends FlutterFlowModel<TransactionRulesWidget> {
  ///  Local state fields for this page.

  bool descriptionContains = true;

  bool amountMin = true;

  bool amountMax = true;

  bool accountName = true;

  Color? descriptionColor;

  Color? amountminColor;

  Color? amountmaxColor;

  Color? accountNameColor;

  Color? descTextColor = const Color(0xFF95A1AC);

  Color? amoMinTextColor = const Color(0xFF95A1AC);

  Color? amoMaxTextColor = const Color(0xFF95A1AC);

  Color? accouTextColor = const Color(0xFF95A1AC);

  Color? trainingResultsColor;

  String? trainResultsStatus = 'Online';

  DateTime? lastTrained;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Backend Call - API (Train Model)] action in Button widget.
  ApiCallResponse? trainingResults;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  InstantTimer? instantTimer;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    instantTimer?.cancel();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
