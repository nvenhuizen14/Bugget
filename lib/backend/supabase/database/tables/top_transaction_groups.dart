import '../database.dart';

class TopTransactionGroupsTable extends SupabaseTable<TopTransactionGroupsRow> {
  @override
  String get tableName => 'top_transaction_groups';

  @override
  TopTransactionGroupsRow createRow(Map<String, dynamic> data) =>
      TopTransactionGroupsRow(data);
}

class TopTransactionGroupsRow extends SupabaseDataRow {
  TopTransactionGroupsRow(super.data);

  @override
  SupabaseTable get table => TopTransactionGroupsTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get groupName => getField<String>('group_name');
  set groupName(String? value) => setField<String>('group_name', value);

  double? get totalAmount => getField<double>('total_amount');
  set totalAmount(double? value) => setField<double>('total_amount', value);
}
