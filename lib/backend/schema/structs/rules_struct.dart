// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class RulesStruct extends FFFirebaseStruct {
  RulesStruct({
    String? keyword,
    double? amountMin,
    double? amountMax,
    String? accountName,
    String? category,
    String? userId,
    int? id,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _keyword = keyword,
        _amountMin = amountMin,
        _amountMax = amountMax,
        _accountName = accountName,
        _category = category,
        _userId = userId,
        _id = id,
        super(firestoreUtilData);

  // "keyword" field.
  String? _keyword;
  String get keyword => _keyword ?? '';
  set keyword(String? val) => _keyword = val;

  bool hasKeyword() => _keyword != null;

  // "amount_min" field.
  double? _amountMin;
  double get amountMin => _amountMin ?? 0.0;
  set amountMin(double? val) => _amountMin = val;

  void incrementAmountMin(double amount) => amountMin = amountMin + amount;

  bool hasAmountMin() => _amountMin != null;

  // "amount_max" field.
  double? _amountMax;
  double get amountMax => _amountMax ?? 0.0;
  set amountMax(double? val) => _amountMax = val;

  void incrementAmountMax(double amount) => amountMax = amountMax + amount;

  bool hasAmountMax() => _amountMax != null;

  // "account_name" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  set accountName(String? val) => _accountName = val;

  bool hasAccountName() => _accountName != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static RulesStruct fromMap(Map<String, dynamic> data) => RulesStruct(
        keyword: data['keyword'] as String?,
        amountMin: castToType<double>(data['amount_min']),
        amountMax: castToType<double>(data['amount_max']),
        accountName: data['account_name'] as String?,
        category: data['category'] as String?,
        userId: data['user_id'] as String?,
        id: castToType<int>(data['id']),
      );

  static RulesStruct? maybeFromMap(dynamic data) =>
      data is Map ? RulesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'keyword': _keyword,
        'amount_min': _amountMin,
        'amount_max': _amountMax,
        'account_name': _accountName,
        'category': _category,
        'user_id': _userId,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'keyword': serializeParam(
          _keyword,
          ParamType.String,
        ),
        'amount_min': serializeParam(
          _amountMin,
          ParamType.double,
        ),
        'amount_max': serializeParam(
          _amountMax,
          ParamType.double,
        ),
        'account_name': serializeParam(
          _accountName,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static RulesStruct fromSerializableMap(Map<String, dynamic> data) =>
      RulesStruct(
        keyword: deserializeParam(
          data['keyword'],
          ParamType.String,
          false,
        ),
        amountMin: deserializeParam(
          data['amount_min'],
          ParamType.double,
          false,
        ),
        amountMax: deserializeParam(
          data['amount_max'],
          ParamType.double,
          false,
        ),
        accountName: deserializeParam(
          data['account_name'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RulesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RulesStruct &&
        keyword == other.keyword &&
        amountMin == other.amountMin &&
        amountMax == other.amountMax &&
        accountName == other.accountName &&
        category == other.category &&
        userId == other.userId &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([keyword, amountMin, amountMax, accountName, category, userId, id]);
}

RulesStruct createRulesStruct({
  String? keyword,
  double? amountMin,
  double? amountMax,
  String? accountName,
  String? category,
  String? userId,
  int? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RulesStruct(
      keyword: keyword,
      amountMin: amountMin,
      amountMax: amountMax,
      accountName: accountName,
      category: category,
      userId: userId,
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RulesStruct? updateRulesStruct(
  RulesStruct? rules, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    rules
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRulesStructData(
  Map<String, dynamic> firestoreData,
  RulesStruct? rules,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (rules == null) {
    return;
  }
  if (rules.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && rules.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final rulesData = getRulesFirestoreData(rules, forFieldValue);
  final nestedData = rulesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = rules.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRulesFirestoreData(
  RulesStruct? rules, [
  bool forFieldValue = false,
]) {
  if (rules == null) {
    return {};
  }
  final firestoreData = mapToFirestore(rules.toMap());

  // Add any Firestore field values
  rules.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRulesListFirestoreData(
  List<RulesStruct>? ruless,
) =>
    ruless?.map((e) => getRulesFirestoreData(e, true)).toList() ?? [];
