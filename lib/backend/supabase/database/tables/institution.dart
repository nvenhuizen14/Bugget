import '../database.dart';

class InstitutionTable extends SupabaseTable<InstitutionRow> {
  @override
  String get tableName => 'institution';

  @override
  InstitutionRow createRow(Map<String, dynamic> data) => InstitutionRow(data);
}

class InstitutionRow extends SupabaseDataRow {
  InstitutionRow(super.data);

  @override
  SupabaseTable get table => InstitutionTable();

  String get institutionId => getField<String>('institution_id')!;
  set institutionId(String value) => setField<String>('institution_id', value);

  String? get countryCodes => getField<String>('country_codes');
  set countryCodes(String? value) => setField<String>('country_codes', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
