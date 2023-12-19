import '../database.dart';

class PlaidRequestsTable extends SupabaseTable<PlaidRequestsRow> {
  @override
  String get tableName => 'plaid_requests';

  @override
  PlaidRequestsRow createRow(Map<String, dynamic> data) =>
      PlaidRequestsRow(data);
}

class PlaidRequestsRow extends SupabaseDataRow {
  PlaidRequestsRow(super.data);

  @override
  SupabaseTable get table => PlaidRequestsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get publicToken => getField<String>('public_token');
  set publicToken(String? value) => setField<String>('public_token', value);

  dynamic get n8nResponse => getField<dynamic>('n8n_response');
  set n8nResponse(dynamic value) => setField<dynamic>('n8n_response', value);
}
