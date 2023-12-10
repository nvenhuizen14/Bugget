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

  String? get descriptionRule => getField<String>('description_rule');
  set descriptionRule(String? value) =>
      setField<String>('description_rule', value);

  int? get amountMin => getField<int>('amount_min');
  set amountMin(int? value) => setField<int>('amount_min', value);

  int? get amountMax => getField<int>('amount_max');
  set amountMax(int? value) => setField<int>('amount_max', value);

  String? get accountNameRule => getField<String>('account_name_rule');
  set accountNameRule(String? value) =>
      setField<String>('account_name_rule', value);

  String? get categoryRule => getField<String>('category_rule');
  set categoryRule(String? value) => setField<String>('category_rule', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
