import '../database.dart';

class TransactionGroupTable extends SupabaseTable<TransactionGroupRow> {
  @override
  String get tableName => 'transaction_group';

  @override
  TransactionGroupRow createRow(Map<String, dynamic> data) =>
      TransactionGroupRow(data);
}

class TransactionGroupRow extends SupabaseDataRow {
  TransactionGroupRow(super.data);

  @override
  SupabaseTable get table => TransactionGroupTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
