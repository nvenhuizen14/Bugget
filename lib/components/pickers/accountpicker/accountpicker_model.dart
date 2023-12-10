import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'accountpicker_widget.dart' show AccountpickerWidget;
import 'package:flutter/material.dart';

class AccountpickerModel extends FlutterFlowModel<AccountpickerWidget> {
  ///  Local state fields for this component.

  TransactionsRow? currenTransaction;

  AccountRow? currentAccount;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Update Row] action in Container widget.
  List<TransactionsRow>? newAccount;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
