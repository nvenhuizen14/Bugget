import '../database.dart';

class TransactionCategoryTable extends SupabaseTable<TransactionCategoryRow> {
  @override
  String get tableName => 'transaction_category';

  @override
  TransactionCategoryRow createRow(Map<String, dynamic> data) =>
      TransactionCategoryRow(data);
}

class TransactionCategoryRow extends SupabaseDataRow {
  TransactionCategoryRow(super.data);

  @override
  SupabaseTable get table => TransactionCategoryTable();

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get groupId => getField<int>('group_id');
  set groupId(int? value) => setField<int>('group_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get show => getField<String>('Show');
  set show(String? value) => setField<String>('Show', value);

  bool? get subscription => getField<bool>('Subscription');
  set subscription(bool? value) => setField<bool>('Subscription', value);
}
