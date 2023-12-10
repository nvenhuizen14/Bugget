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

  String? get show => getField<String>('show');
  set show(String? value) => setField<String>('show', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get groupId => getField<int>('group_id');
  set groupId(int? value) => setField<int>('group_id', value);
}
