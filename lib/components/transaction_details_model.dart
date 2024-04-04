import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'transaction_details_widget.dart' show TransactionDetailsWidget;
import 'package:flutter/material.dart';

class TransactionDetailsModel
    extends FlutterFlowModel<TransactionDetailsWidget> {
  ///  Local state fields for this component.

  List<TransactionsRow> currentTransaction = [];
  void addToCurrentTransaction(TransactionsRow item) =>
      currentTransaction.add(item);
  void removeFromCurrentTransaction(TransactionsRow item) =>
      currentTransaction.remove(item);
  void removeAtIndexFromCurrentTransaction(int index) =>
      currentTransaction.removeAt(index);
  void insertAtIndexInCurrentTransaction(int index, TransactionsRow item) =>
      currentTransaction.insert(index, item);
  void updateCurrentTransactionAtIndex(
          int index, Function(TransactionsRow) updateFn) =>
      currentTransaction[index] = updateFn(currentTransaction[index]);

  String catgeory = 'null';

  String group = 'null';

  String account = 'null';

  String? columnView = 'null';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
