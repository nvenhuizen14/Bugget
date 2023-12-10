import '../database.dart';

class UserTable extends SupabaseTable<UserRow> {
  @override
  String get tableName => 'user';

  @override
  UserRow createRow(Map<String, dynamic> data) => UserRow(data);
}

class UserRow extends SupabaseDataRow {
  UserRow(super.data);

  @override
  SupabaseTable get table => UserTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get username => getField<String>('username')!;
  set username(String value) => setField<String>('username', value);

  String? get cursor => getField<String>('cursor');
  set cursor(String? value) => setField<String>('cursor', value);

  String? get publicToken => getField<String>('public_token');
  set publicToken(String? value) => setField<String>('public_token', value);

  String? get accessToken => getField<String>('access_token');
  set accessToken(String? value) => setField<String>('access_token', value);
}
