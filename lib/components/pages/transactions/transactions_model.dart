import '/backend/supabase/supabase.dart';
import '/components/nav_bar_floting/nav_bar_floting_widget.dart';
import '/components/transaction_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

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

  final unfocusNode = FocusNode();
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Models for transactionRow dynamic component.
  late FlutterFlowDynamicModels<TransactionRowModel> transactionRowModels;
  // Model for NavBarFloting component.
  late NavBarFlotingModel navBarFlotingModel;

  /// Query cache managers for this widget.

  final _transactionDateRangeManager =
      FutureRequestManager<List<TransactionsRow>>();
  Future<List<TransactionsRow>> transactionDateRange({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<TransactionsRow>> Function() requestFn,
  }) =>
      _transactionDateRangeManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTransactionDateRangeCache() => _transactionDateRangeManager.clear();
  void clearTransactionDateRangeCacheKey(String? uniqueKey) =>
      _transactionDateRangeManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    transactionRowModels =
        FlutterFlowDynamicModels(() => TransactionRowModel());
    navBarFlotingModel = createModel(context, () => NavBarFlotingModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    transactionRowModels.dispose();
    navBarFlotingModel.dispose();

    /// Dispose query cache managers for this widget.

    clearTransactionDateRangeCache();
  }

  /// Action blocks.
  Future transactionDetails(BuildContext context) async {}
}
