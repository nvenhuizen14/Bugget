import '../database.dart';

class NormalizedTransactionsTable
    extends SupabaseTable<NormalizedTransactionsRow> {
  @override
  String get tableName => 'normalized_transactions';

  @override
  NormalizedTransactionsRow createRow(Map<String, dynamic> data) =>
      NormalizedTransactionsRow(data);
}

class NormalizedTransactionsRow extends SupabaseDataRow {
  NormalizedTransactionsRow(super.data);

  @override
  SupabaseTable get table => NormalizedTransactionsTable();

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get groupName => getField<String>('group_name');
  set groupName(String? value) => setField<String>('group_name', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  String? get accountName => getField<String>('account_name');
  set accountName(String? value) => setField<String>('account_name', value);

  String? get institution => getField<String>('institution');
  set institution(String? value) => setField<String>('institution', value);

  String? get transactionId => getField<String>('transaction_id');
  set transactionId(String? value) => setField<String>('transaction_id', value);

  String? get accountId => getField<String>('account_id');
  set accountId(String? value) => setField<String>('account_id', value);

  DateTime? get dateAdded => getField<DateTime>('date_added');
  set dateAdded(DateTime? value) => setField<DateTime>('date_added', value);

  String? get merchantName => getField<String>('merchant_name');
  set merchantName(String? value) => setField<String>('merchant_name', value);

  bool? get pending => getField<bool>('pending');
  set pending(bool? value) => setField<bool>('pending', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  dynamic get transactionJson => getField<dynamic>('transaction_json');
  set transactionJson(dynamic value) =>
      setField<dynamic>('transaction_json', value);

  int? get categoryId => getField<int>('category_id');
  set categoryId(int? value) => setField<int>('category_id', value);

  bool? get template => getField<bool>('template');
  set template(bool? value) => setField<bool>('template', value);

  double? get normalizedAmount => getField<double>('normalized_amount');
  set normalizedAmount(double? value) =>
      setField<double>('normalized_amount', value);
}
