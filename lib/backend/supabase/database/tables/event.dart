import '../database.dart';

class EventTable extends SupabaseTable<EventRow> {
  @override
  String get tableName => 'event';

  @override
  EventRow createRow(Map<String, dynamic> data) => EventRow(data);
}

class EventRow extends SupabaseDataRow {
  EventRow(super.data);

  @override
  SupabaseTable get table => EventTable();

  String get uid => getField<String>('uid')!;
  set uid(String value) => setField<String>('uid', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime get startDate => getField<DateTime>('startDate')!;
  set startDate(DateTime value) => setField<DateTime>('startDate', value);

  DateTime? get endDate => getField<DateTime>('endDate');
  set endDate(DateTime? value) => setField<DateTime>('endDate', value);

  PostgresTime get startTime => getField<PostgresTime>('startTime')!;
  set startTime(PostgresTime value) =>
      setField<PostgresTime>('startTime', value);

  PostgresTime? get endTime => getField<PostgresTime>('endTime');
  set endTime(PostgresTime? value) => setField<PostgresTime>('endTime', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get usersId => getField<String>('users_id');
  set usersId(String? value) => setField<String>('users_id', value);
}
