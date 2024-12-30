import '../database.dart';

class MonthlyIncomeExpenseTable extends SupabaseTable<MonthlyIncomeExpenseRow> {
  @override
  String get tableName => 'monthly_income_expense';

  @override
  MonthlyIncomeExpenseRow createRow(Map<String, dynamic> data) =>
      MonthlyIncomeExpenseRow(data);
}

class MonthlyIncomeExpenseRow extends SupabaseDataRow {
  MonthlyIncomeExpenseRow(super.data);

  @override
  SupabaseTable get table => MonthlyIncomeExpenseTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get month => getField<DateTime>('month');
  set month(DateTime? value) => setField<DateTime>('month', value);

  double? get totalEarned => getField<double>('total_earned');
  set totalEarned(double? value) => setField<double>('total_earned', value);

  double? get totalExpenses => getField<double>('total_expenses');
  set totalExpenses(double? value) => setField<double>('total_expenses', value);

  double? get currentTotalAmount => getField<double>('current_total_amount');
  set currentTotalAmount(double? value) =>
      setField<double>('current_total_amount', value);
}
