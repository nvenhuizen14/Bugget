import '../database.dart';

class GroupUserViewTable extends SupabaseTable<GroupUserViewRow> {
  @override
  String get tableName => 'group_user_view';

  @override
  GroupUserViewRow createRow(Map<String, dynamic> data) =>
      GroupUserViewRow(data);
}

class GroupUserViewRow extends SupabaseDataRow {
  GroupUserViewRow(super.data);

  @override
  SupabaseTable get table => GroupUserViewTable();

  String? get groupName => getField<String>('group_name');
  set groupName(String? value) => setField<String>('group_name', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);
}
