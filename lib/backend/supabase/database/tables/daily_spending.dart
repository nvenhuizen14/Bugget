import '../database.dart';

class DailySpendingTable extends SupabaseTable<DailySpendingRow> {
  @override
  String get tableName => 'daily_spending';

  @override
  DailySpendingRow createRow(Map<String, dynamic> data) =>
      DailySpendingRow(data);
}

class DailySpendingRow extends SupabaseDataRow {
  DailySpendingRow(super.data);

  @override
  SupabaseTable get table => DailySpendingTable();

  DateTime? get day => getField<DateTime>('day');
  set day(DateTime? value) => setField<DateTime>('day', value);

  double? get totalSpent => getField<double>('total_spent');
  set totalSpent(double? value) => setField<double>('total_spent', value);
}
