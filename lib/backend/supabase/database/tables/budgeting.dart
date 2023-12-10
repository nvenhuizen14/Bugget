import '../database.dart';

class BudgetingTable extends SupabaseTable<BudgetingRow> {
  @override
  String get tableName => 'budgeting';

  @override
  BudgetingRow createRow(Map<String, dynamic> data) => BudgetingRow(data);
}

class BudgetingRow extends SupabaseDataRow {
  BudgetingRow(super.data);

  @override
  SupabaseTable get table => BudgetingTable();

  String? get budgetItem => getField<String>('budget_item');
  set budgetItem(String? value) => setField<String>('budget_item', value);

  String? get group => getField<String>('group');
  set group(String? value) => setField<String>('group', value);

  String? get recurring => getField<String>('recurring');
  set recurring(String? value) => setField<String>('recurring', value);

  double? get budgetLimit => getField<double>('budget_limit');
  set budgetLimit(double? value) => setField<double>('budget_limit', value);

  double? get budgetActual => getField<double>('budget_actual');
  set budgetActual(double? value) => setField<double>('budget_actual', value);

  double? get budgetRemaining => getField<double>('budget_remaining');
  set budgetRemaining(double? value) =>
      setField<double>('budget_remaining', value);

  double? get budgetPercentage => getField<double>('budget_percentage');
  set budgetPercentage(double? value) =>
      setField<double>('budget_percentage', value);

  int? get transactionCount => getField<int>('transaction_count');
  set transactionCount(int? value) => setField<int>('transaction_count', value);

  DateTime? get budgetStartDate => getField<DateTime>('budget_start_date');
  set budgetStartDate(DateTime? value) =>
      setField<DateTime>('budget_start_date', value);

  DateTime? get budgetEndDate => getField<DateTime>('budget_end_date');
  set budgetEndDate(DateTime? value) =>
      setField<DateTime>('budget_end_date', value);
}
