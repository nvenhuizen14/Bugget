import '../database.dart';

class ParentChildMonthlyIncomeExpenseTable
    extends SupabaseTable<ParentChildMonthlyIncomeExpenseRow> {
  @override
  String get tableName => 'parent_child_monthly_income_expense';

  @override
  ParentChildMonthlyIncomeExpenseRow createRow(Map<String, dynamic> data) =>
      ParentChildMonthlyIncomeExpenseRow(data);
}

class ParentChildMonthlyIncomeExpenseRow extends SupabaseDataRow {
  ParentChildMonthlyIncomeExpenseRow(super.data);

  @override
  SupabaseTable get table => ParentChildMonthlyIncomeExpenseTable();

  String? get parentId => getField<String>('parent_id');
  set parentId(String? value) => setField<String>('parent_id', value);

  String? get childId => getField<String>('child_id');
  set childId(String? value) => setField<String>('child_id', value);

  double? get totalIncome => getField<double>('total_income');
  set totalIncome(double? value) => setField<double>('total_income', value);

  double? get totalExpense => getField<double>('total_expense');
  set totalExpense(double? value) => setField<double>('total_expense', value);
}
