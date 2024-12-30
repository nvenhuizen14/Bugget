import '../database.dart';

class PlaidWebhooksTable extends SupabaseTable<PlaidWebhooksRow> {
  @override
  String get tableName => 'plaid_webhooks';

  @override
  PlaidWebhooksRow createRow(Map<String, dynamic> data) =>
      PlaidWebhooksRow(data);
}

class PlaidWebhooksRow extends SupabaseDataRow {
  PlaidWebhooksRow(super.data);

  @override
  SupabaseTable get table => PlaidWebhooksTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get webhookCode => getField<String>('webhook_code');
  set webhookCode(String? value) => setField<String>('webhook_code', value);

  String? get webhookType => getField<String>('webhook_type');
  set webhookType(String? value) => setField<String>('webhook_type', value);

  String? get itemId => getField<String>('item_id');
  set itemId(String? value) => setField<String>('item_id', value);

  dynamic get webhhookJson => getField<dynamic>('webhhook_json');
  set webhhookJson(dynamic value) => setField<dynamic>('webhhook_json', value);

  dynamic get error => getField<dynamic>('error');
  set error(dynamic value) => setField<dynamic>('error', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);
}
