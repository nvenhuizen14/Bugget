import '../database.dart';

class BudgetTable extends SupabaseTable<BudgetRow> {
  @override
  String get tableName => 'budget';

  @override
  BudgetRow createRow(Map<String, dynamic> data) => BudgetRow(data);
}

class BudgetRow extends SupabaseDataRow {
  BudgetRow(super.data);

  @override
  SupabaseTable get table => BudgetTable();

  String get budgetItem => getField<String>('budget_item')!;
  set budgetItem(String value) => setField<String>('budget_item', value);

  String? get group => getField<String>('group');
  set group(String? value) => setField<String>('group', value);

  String get recurring => getField<String>('recurring')!;
  set recurring(String value) => setField<String>('recurring', value);

  double get budgetLimit => getField<double>('budget_limit')!;
  set budgetLimit(double value) => setField<double>('budget_limit', value);

  DateTime get budgetStartDate => getField<DateTime>('budget_start_date')!;
  set budgetStartDate(DateTime value) =>
      setField<DateTime>('budget_start_date', value);

  DateTime? get budgetEndDate => getField<DateTime>('budget_end_date');
  set budgetEndDate(DateTime? value) =>
      setField<DateTime>('budget_end_date', value);

  int get budgetId => getField<int>('budget_id')!;
  set budgetId(int value) => setField<int>('budget_id', value);
}
