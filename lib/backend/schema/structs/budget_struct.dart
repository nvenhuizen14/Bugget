// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BudgetStruct extends FFFirebaseStruct {
  BudgetStruct({
    int? amount,
    int? limit,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _amount = amount,
        _limit = limit,
        super(firestoreUtilData);

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  set amount(int? val) => _amount = val;
  void incrementAmount(int amount) => _amount = amount + amount;
  bool hasAmount() => _amount != null;

  // "limit" field.
  int? _limit;
  int get limit => _limit ?? 0;
  set limit(int? val) => _limit = val;
  void incrementLimit(int amount) => _limit = limit + amount;
  bool hasLimit() => _limit != null;

  static BudgetStruct fromMap(Map<String, dynamic> data) => BudgetStruct(
        amount: castToType<int>(data['amount']),
        limit: castToType<int>(data['limit']),
      );

  static BudgetStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? BudgetStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'amount': _amount,
        'limit': _limit,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'amount': serializeParam(
          _amount,
          ParamType.int,
        ),
        'limit': serializeParam(
          _limit,
          ParamType.int,
        ),
      }.withoutNulls;

  static BudgetStruct fromSerializableMap(Map<String, dynamic> data) =>
      BudgetStruct(
        amount: deserializeParam(
          data['amount'],
          ParamType.int,
          false,
        ),
        limit: deserializeParam(
          data['limit'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'BudgetStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BudgetStruct &&
        amount == other.amount &&
        limit == other.limit;
  }

  @override
  int get hashCode => const ListEquality().hash([amount, limit]);
}

BudgetStruct createBudgetStruct({
  int? amount,
  int? limit,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BudgetStruct(
      amount: amount,
      limit: limit,
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
