import '../database.dart';

class UserRulesTable extends SupabaseTable<UserRulesRow> {
  @override
  String get tableName => 'user_rules';

  @override
  UserRulesRow createRow(Map<String, dynamic> data) => UserRulesRow(data);
}

class UserRulesRow extends SupabaseDataRow {
  UserRulesRow(super.data);

  @override
  SupabaseTable get table => UserRulesTable();

  List<String> get keyword => getListField<String>('keyword');
  set keyword(List<String>? value) => setListField<String>('keyword', value);

  double? get amountMin => getField<double>('amount_min');
  set amountMin(double? value) => setField<double>('amount_min', value);

  double? get amountMax => getField<double>('amount_max');
  set amountMax(double? value) => setField<double>('amount_max', value);

  String? get accountName => getField<String>('account_name');
  set accountName(String? value) => setField<String>('account_name', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get keywordTextVector => getField<String>('keyword_text_vector');
  set keywordTextVector(String? value) =>
      setField<String>('keyword_text_vector', value);
}
