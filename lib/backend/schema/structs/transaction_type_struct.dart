// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TransactionTypeStruct extends FFFirebaseStruct {
  TransactionTypeStruct({
    String? type,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _type = type,
        super(firestoreUtilData);

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  static TransactionTypeStruct fromMap(Map<String, dynamic> data) =>
      TransactionTypeStruct(
        type: data['type'] as String?,
      );

  static TransactionTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? TransactionTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
      }.withoutNulls;

  static TransactionTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      TransactionTypeStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TransactionTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransactionTypeStruct && type == other.type;
  }

  @override
  int get hashCode => const ListEquality().hash([type]);
}

TransactionTypeStruct createTransactionTypeStruct({
  String? type,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TransactionTypeStruct(
      type: type,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TransactionTypeStruct? updateTransactionTypeStruct(
  TransactionTypeStruct? transactionType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    transactionType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTransactionTypeStructData(
  Map<String, dynamic> firestoreData,
  TransactionTypeStruct? transactionType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (transactionType == null) {
    return;
  }
  if (transactionType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && transactionType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final transactionTypeData =
      getTransactionTypeFirestoreData(transactionType, forFieldValue);
  final nestedData =
      transactionTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = transactionType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTransactionTypeFirestoreData(
  TransactionTypeStruct? transactionType, [
  bool forFieldValue = false,
]) {
  if (transactionType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(transactionType.toMap());

  // Add any Firestore field values
  transactionType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTransactionTypeListFirestoreData(
  List<TransactionTypeStruct>? transactionTypes,
) =>
    transactionTypes
        ?.map((e) => getTransactionTypeFirestoreData(e, true))
        .toList() ??
    [];
