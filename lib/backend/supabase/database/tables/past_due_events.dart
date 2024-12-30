import '../database.dart';

class PastDueEventsTable extends SupabaseTable<PastDueEventsRow> {
  @override
  String get tableName => 'past_due_events';

  @override
  PastDueEventsRow createRow(Map<String, dynamic> data) =>
      PastDueEventsRow(data);
}

class PastDueEventsRow extends SupabaseDataRow {
  PastDueEventsRow(super.data);

  @override
  SupabaseTable get table => PastDueEventsTable();

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get startDate => getField<DateTime>('startDate');
  set startDate(DateTime? value) => setField<DateTime>('startDate', value);

  DateTime? get endDate => getField<DateTime>('endDate');
  set endDate(DateTime? value) => setField<DateTime>('endDate', value);

  PostgresTime? get startTime => getField<PostgresTime>('startTime');
  set startTime(PostgresTime? value) =>
      setField<PostgresTime>('startTime', value);

  PostgresTime? get endTime => getField<PostgresTime>('endTime');
  set endTime(PostgresTime? value) => setField<PostgresTime>('endTime', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);
}
