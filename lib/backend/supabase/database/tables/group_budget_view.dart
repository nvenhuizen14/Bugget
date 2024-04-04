import '../database.dart';

class GroupBudgetViewTable extends SupabaseTable<GroupBudgetViewRow> {
  @override
  String get tableName => 'group_budget_view';

  @override
  GroupBudgetViewRow createRow(Map<String, dynamic> data) =>
      GroupBudgetViewRow(data);
}

class GroupBudgetViewRow extends SupabaseDataRow {
  GroupBudgetViewRow(super.data);

  @override
  SupabaseTable get table => GroupBudgetViewTable();

  String? get groupName => getField<String>('group_name');
  set groupName(String? value) => setField<String>('group_name', value);

  double? get groupBudgetLimit => getField<double>('group_budget_limit');
  set groupBudgetLimit(double? value) =>
      setField<double>('group_budget_limit', value);

  double? get groupBudgetActual => getField<double>('group_budget_actual');
  set groupBudgetActual(double? value) =>
      setField<double>('group_budget_actual', value);

  double? get groupBudgetRemaining =>
      getField<double>('group_budget_remaining');
  set groupBudgetRemaining(double? value) =>
      setField<double>('group_budget_remaining', value);

  double? get groupBudgetPercentage =>
      getField<double>('group_budget_percentage');
  set groupBudgetPercentage(double? value) =>
      setField<double>('group_budget_percentage', value);
}
