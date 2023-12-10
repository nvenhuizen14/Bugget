import '../database.dart';

class WeeklySpendingTable extends SupabaseTable<WeeklySpendingRow> {
  @override
  String get tableName => 'weekly_spending';

  @override
  WeeklySpendingRow createRow(Map<String, dynamic> data) =>
      WeeklySpendingRow(data);
}

class WeeklySpendingRow extends SupabaseDataRow {
  WeeklySpendingRow(super.data);

  @override
  SupabaseTable get table => WeeklySpendingTable();

  DateTime? get weekStart => getField<DateTime>('week_start');
  set weekStart(DateTime? value) => setField<DateTime>('week_start', value);

  double? get totalSpent => getField<double>('total_spent');
  set totalSpent(double? value) => setField<double>('total_spent', value);
}
