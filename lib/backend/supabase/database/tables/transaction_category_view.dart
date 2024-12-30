import '../database.dart';

class TransactionCategoryViewTable
    extends SupabaseTable<TransactionCategoryViewRow> {
  @override
  String get tableName => 'transaction_category_view';

  @override
  TransactionCategoryViewRow createRow(Map<String, dynamic> data) =>
      TransactionCategoryViewRow(data);
}

class TransactionCategoryViewRow extends SupabaseDataRow {
  TransactionCategoryViewRow(super.data);

  @override
  SupabaseTable get table => TransactionCategoryViewTable();

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get groupName => getField<String>('group_name');
  set groupName(String? value) => setField<String>('group_name', value);

  int? get categoryId => getField<int>('category_id');
  set categoryId(int? value) => setField<int>('category_id', value);

  bool? get subscriptionStatus => getField<bool>('subscription_status');
  set subscriptionStatus(bool? value) =>
      setField<bool>('subscription_status', value);

  int? get groupId => getField<int>('group_id');
  set groupId(int? value) => setField<int>('group_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
