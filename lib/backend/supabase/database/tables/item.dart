import '../database.dart';

class ItemTable extends SupabaseTable<ItemRow> {
  @override
  String get tableName => 'item';

  @override
  ItemRow createRow(Map<String, dynamic> data) => ItemRow(data);
}

class ItemRow extends SupabaseDataRow {
  ItemRow(super.data);

  @override
  SupabaseTable get table => ItemTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  List<String> get availableProducts =>
      getListField<String>('available_products');
  set availableProducts(List<String>? value) =>
      setListField<String>('available_products', value);

  List<String> get billedProducts => getListField<String>('billed_products');
  set billedProducts(List<String> value) =>
      setListField<String>('billed_products', value);

  String? get error => getField<String>('error');
  set error(String? value) => setField<String>('error', value);

  String? get errorType => getField<String>('error_type');
  set errorType(String? value) => setField<String>('error_type', value);

  String? get errorCode => getField<String>('error_code');
  set errorCode(String? value) => setField<String>('error_code', value);

  String? get institutionId => getField<String>('institution_id');
  set institutionId(String? value) => setField<String>('institution_id', value);

  String? get updateType => getField<String>('update_type');
  set updateType(String? value) => setField<String>('update_type', value);

  String? get webhook => getField<String>('webhook');
  set webhook(String? value) => setField<String>('webhook', value);

  DateTime? get lastSuccessfulUpdate =>
      getField<DateTime>('last_successful_update');
  set lastSuccessfulUpdate(DateTime? value) =>
      setField<DateTime>('last_successful_update', value);

  DateTime? get lastFailedUpdate => getField<DateTime>('last_failed_update');
  set lastFailedUpdate(DateTime? value) =>
      setField<DateTime>('last_failed_update', value);

  DateTime? get lastWebhookSentAt => getField<DateTime>('last_webhook_sent_at');
  set lastWebhookSentAt(DateTime? value) =>
      setField<DateTime>('last_webhook_sent_at', value);

  String? get lastWebhookCodeSent => getField<String>('last_webhook_code_sent');
  set lastWebhookCodeSent(String? value) =>
      setField<String>('last_webhook_code_sent', value);

  String? get accessToken => getField<String>('access_token');
  set accessToken(String? value) => setField<String>('access_token', value);

  String? get publicToken => getField<String>('public_token');
  set publicToken(String? value) => setField<String>('public_token', value);

  String? get nextCursor => getField<String>('next_cursor');
  set nextCursor(String? value) => setField<String>('next_cursor', value);

  String? get originalCursor => getField<String>('original_cursor');
  set originalCursor(String? value) =>
      setField<String>('original_cursor', value);

  bool get firstSync => getField<bool>('firstSync')!;
  set firstSync(bool value) => setField<bool>('firstSync', value);
}
