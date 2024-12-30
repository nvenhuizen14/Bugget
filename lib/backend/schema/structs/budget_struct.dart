// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class BudgetStruct extends FFFirebaseStruct {
  BudgetStruct({
    String? group,
    double? limit,
    String? item,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _group = group,
        _limit = limit,
        _item = item,
        super(firestoreUtilData);

  // "group" field.
  String? _group;
  String get group => _group ?? 'null';
  set group(String? val) => _group = val;

  bool hasGroup() => _group != null;

  // "limit" field.
  double? _limit;
  double get limit => _limit ?? 0.0;
  set limit(double? val) => _limit = val;

  void incrementLimit(double amount) => limit = limit + amount;

  bool hasLimit() => _limit != null;

  // "item" field.
  String? _item;
  String get item => _item ?? '';
  set item(String? val) => _item = val;

  bool hasItem() => _item != null;

  static BudgetStruct fromMap(Map<String, dynamic> data) => BudgetStruct(
        group: data['group'] as String?,
        limit: castToType<double>(data['limit']),
        item: data['item'] as String?,
      );

  static BudgetStruct? maybeFromMap(dynamic data) =>
      data is Map ? BudgetStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'group': _group,
        'limit': _limit,
        'item': _item,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'group': serializeParam(
          _group,
          ParamType.String,
        ),
        'limit': serializeParam(
          _limit,
          ParamType.double,
        ),
        'item': serializeParam(
          _item,
          ParamType.String,
        ),
      }.withoutNulls;

  static BudgetStruct fromSerializableMap(Map<String, dynamic> data) =>
      BudgetStruct(
        group: deserializeParam(
          data['group'],
          ParamType.String,
          false,
        ),
        limit: deserializeParam(
          data['limit'],
          ParamType.double,
          false,
        ),
        item: deserializeParam(
          data['item'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BudgetStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BudgetStruct &&
        group == other.group &&
        limit == other.limit &&
        item == other.item;
  }

  @override
  int get hashCode => const ListEquality().hash([group, limit, item]);
}

BudgetStruct createBudgetStruct({
  String? group,
  double? limit,
  String? item,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BudgetStruct(
      group: group,
      limit: limit,
      item: item,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BudgetStruct? updateBudgetStruct(
  BudgetStruct? budget, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    budget
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBudgetStructData(
  Map<String, dynamic> firestoreData,
  BudgetStruct? budget,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (budget == null) {
    return;
  }
  if (budget.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && budget.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final budgetData = getBudgetFirestoreData(budget, forFieldValue);
  final nestedData = budgetData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = budget.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBudgetFirestoreData(
  BudgetStruct? budget, [
  bool forFieldValue = false,
]) {
  if (budget == null) {
    return {};
  }
  final firestoreData = mapToFirestore(budget.toMap());

  // Add any Firestore field values
  budget.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBudgetListFirestoreData(
  List<BudgetStruct>? budgets,
) =>
    budgets?.map((e) => getBudgetFirestoreData(e, true)).toList() ?? [];
