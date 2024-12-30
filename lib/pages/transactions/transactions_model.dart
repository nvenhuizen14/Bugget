import '/components/nav_bar_floting/nav_bar_floting_widget.dart';
import '/components/transaction_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'transactions_widget.dart' show TransactionsWidget;
import 'package:flutter/material.dart';

class TransactionsModel extends FlutterFlowModel<TransactionsWidget> {
  ///  Local state fields for this page.

  DateTime? startDate;

  DateTime? endDate;

  String? columnView = 'null';

  Color? navbarColor = const Color(0xFF3000CA);

  Color? navbarHoverColor = const Color(0xFFB600FF);

  bool transactionsPage = true;

  ///  State fields for stateful widgets in this page.

  DateTime? datePicked1;
  DateTime? datePicked2;
  // Models for transactionRow dynamic component.
  late FlutterFlowDynamicModels<TransactionRowModel> transactionRowModels;
  // Model for NavBarFloting component.
  late NavBarFlotingModel navBarFlotingModel;

  @override
  void initState(BuildContext context) {
    transactionRowModels =
        FlutterFlowDynamicModels(() => TransactionRowModel());
    navBarFlotingModel = createModel(context, () => NavBarFlotingModel());
  }

  @override
  void dispose() {
    transactionRowModels.dispose();
    navBarFlotingModel.dispose();
  }

  /// Action blocks.
  Future transactionDetails(BuildContext context) async {}
}
