import '../database.dart';

class AccountTable extends SupabaseTable<AccountRow> {
  @override
  String get tableName => 'account';

  @override
  AccountRow createRow(Map<String, dynamic> data) => AccountRow(data);
}

class AccountRow extends SupabaseDataRow {
  AccountRow(super.data);

  @override
  SupabaseTable get table => AccountTable();

  String get accountId => getField<String>('account_id')!;
  set accountId(String value) => setField<String>('account_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  double? get balance => getField<double>('balance');
  set balance(double? value) => setField<double>('balance', value);

  String? get institutionId => getField<String>('institution_id');
  set institutionId(String? value) => setField<String>('institution_id', value);

  bool? get show => getField<bool>('show');
  set show(bool? value) => setField<bool>('show', value);

  DateTime? get lastUpdated => getField<DateTime>('last_updated');
  set lastUpdated(DateTime? value) => setField<DateTime>('last_updated', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get institutionName => getField<String>('institution_name');
  set institutionName(String? value) =>
      setField<String>('institution_name', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get itemId => getField<String>('item_id');
  set itemId(String? value) => setField<String>('item_id', value);
}
