import '/backend/supabase/supabase.dart';
import '/components/account_card_widget.dart';
import '/components/nav_bar_floting/nav_bar_floting_widget.dart';
import '/components/transaction_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'accounts_widget.dart' show AccountsWidget;
import 'package:flutter/material.dart';

class AccountsModel extends FlutterFlowModel<AccountsWidget> {
  ///  Local state fields for this page.

  Color? cardClicked = const Color(0xFF0F0E0E);

  AccountRow? currentAccount;

  bool recentTransactionsClicked = false;

  String? selectedCardId = 'null';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for accountCard dynamic component.
  late FlutterFlowDynamicModels<AccountCardModel> accountCardModels;
  // Models for transactionRow dynamic component.
  late FlutterFlowDynamicModels<TransactionRowModel> transactionRowModels;
  // Model for NavBarFloting component.
  late NavBarFlotingModel navBarFlotingModel;

  @override
  void initState(BuildContext context) {
    accountCardModels = FlutterFlowDynamicModels(() => AccountCardModel());
    transactionRowModels =
        FlutterFlowDynamicModels(() => TransactionRowModel());
    navBarFlotingModel = createModel(context, () => NavBarFlotingModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    accountCardModels.dispose();
    transactionRowModels.dispose();
    navBarFlotingModel.dispose();
  }
}
