// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SpotsStruct extends FFFirebaseStruct {
  SpotsStruct({
    List<double>? flSpot,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _flSpot = flSpot,
        super(firestoreUtilData);

  // "FlSpot" field.
  List<double>? _flSpot;
  List<double> get flSpot => _flSpot ?? const [];
  set flSpot(List<double>? val) => _flSpot = val;
  void updateFlSpot(Function(List<double>) updateFn) =>
      updateFn(_flSpot ??= []);
  bool hasFlSpot() => _flSpot != null;

  static SpotsStruct fromMap(Map<String, dynamic> data) => SpotsStruct(
        flSpot: getDataList(data['FlSpot']),
      );

  static SpotsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? SpotsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'FlSpot': _flSpot,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'FlSpot': serializeParam(
          _flSpot,
          ParamType.double,
          true,
        ),
      }.withoutNulls;

  static SpotsStruct fromSerializableMap(Map<String, dynamic> data) =>
      SpotsStruct(
        flSpot: deserializeParam<double>(
          data['FlSpot'],
          ParamType.double,
          true,
        ),
      );

  @override
  String toString() => 'SpotsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SpotsStruct && listEquality.equals(flSpot, other.flSpot);
  }

  @override
  int get hashCode => const ListEquality().hash([flSpot]);
}

SpotsStruct createSpotsStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SpotsStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SpotsStruct? updateSpotsStruct(
  SpotsStruct? spots, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    spots
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSpotsStructData(
  Map<String, dynamic> firestoreData,
  SpotsStruct? spots,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (spots == null) {
    return;
  }
  if (spots.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && spots.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final spotsData = getSpotsFirestoreData(spots, forFieldValue);
  final nestedData = spotsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = spots.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSpotsFirestoreData(
  SpotsStruct? spots, [
  bool forFieldValue = false,
]) {
  if (spots == null) {
    return {};
  }
  final firestoreData = mapToFirestore(spots.toMap());

  // Add any Firestore field values
  spots.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSpotsListFirestoreData(
  List<SpotsStruct>? spotss,
) =>
    spotss?.map((e) => getSpotsFirestoreData(e, true)).toList() ?? [];
