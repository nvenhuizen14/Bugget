// ignore_for_file: avoid_print

import 'dart:async';

import 'package:bugget/backend/supabase/database/database.dart';
// ignore: unnecessary_import
import 'package:supabase/supabase.dart';

abstract class SupabaseTable<T extends SupabaseDataRow> {
  String get tableName;
  T createRow(Map<String, dynamic> data);

  // Correct the _select method
  PostgrestFilterBuilder _select() => SupaFlow.client.from(tableName).select();

  // Merged queryRows method
  Future<List<T>> queryRows({
    required Function(PostgrestFilterBuilder<dynamic>) queryFn,
    int? limit,
  }) {
    final select = _select();
    var query = queryFn(select);
    query = limit != null ? query.limit(limit) : query;
    return query
        .select()
        .then((response) => response.map((data) => createRow(data as Map<String, dynamic>)).toList());
  }

  future<List> ({
    required PostgrestTransformBuilder Function(PostgrestFilterBuilder) queryFn,
    int? limit,
  }) {
    final select = _select();
    var query = queryFn(select);
    query = limit != null ? query.limit(limit) : query;
    return query
        .select()
        .then((rows) => rows.map(createRow).toList());
  }

  Future<List<T>> querySingleRow({
    required PostgrestTransformBuilder Function(PostgrestFilterBuilder) queryFn,
  }) =>
      queryFn(_select())
          .limit(1)
          .select()
          .maybeSingle()
          .catchError((e) => print('Error querying row: $e'))
          .then((r) => [if (r != null) createRow(r)]);

  Future insert(Map<String, dynamic> data) => SupaFlow.client
      .from(tableName)
      .insert(data)
      .select()
      .limit(1)
      .single()
      .then(createRow as FutureOr Function(dynamic value));

  Future<List> update({
    required Map<String, dynamic> data,
    required PostgrestTransformBuilder Function(PostgrestFilterBuilder)
        matchingRows,
    bool returnRows = false,
  }) async {
    final update = matchingRows(SupaFlow.client.from(tableName).update(data));
    if (!returnRows) {
      await update;
      return [];
    }
    return update
        .select()
        .then((rows) => rows.map(createRow).toList());
  }

  Future<List<T>> delete({
    required PostgrestTransformBuilder Function(PostgrestFilterBuilder)
        matchingRows,
    bool returnRows = false,
  }) async {
    final delete = matchingRows(SupaFlow.client.from(tableName).delete());
    if (!returnRows) {
      await delete;
      return [];
    }
    return delete
        .select()
        .then((rows) => rows.map(createRow).toList());
  }
}


class PostgresTime {
  PostgresTime(this.time);
  DateTime? time;

  static PostgresTime? tryParse(String formattedString) {
    final datePrefix = DateTime.now().toIso8601String().split('T').first;
    return PostgresTime(DateTime.tryParse('${datePrefix}T$formattedString'));
  }

  String? toIso8601String() {
    return time?.toIso8601String().split('T').last;
  }

  @override
  String toString() {
    return toIso8601String() ?? '';
  }
}
