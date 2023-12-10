// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FlSpotStruct extends FFFirebaseStruct {
  FlSpotStruct({
    double? x1,
    double? y1,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _x1 = x1,
        _y1 = y1,
        super(firestoreUtilData);

  // "x1" field.
  double? _x1;
  double get x1 => _x1 ?? 0.0;
  set x1(double? val) => _x1 = val;
  void incrementX1(double amount) => _x1 = x1 + amount;
  bool hasX1() => _x1 != null;

  // "y1" field.
  double? _y1;
  double get y1 => _y1 ?? 0.0;
  set y1(double? val) => _y1 = val;
  void incrementY1(double amount) => _y1 = y1 + amount;
  bool hasY1() => _y1 != null;

  static FlSpotStruct fromMap(Map<String, dynamic> data) => FlSpotStruct(
        x1: castToType<double>(data['x1']),
        y1: castToType<double>(data['y1']),
      );

  static FlSpotStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? FlSpotStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'x1': _x1,
        'y1': _y1,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'x1': serializeParam(
          _x1,
          ParamType.double,
        ),
        'y1': serializeParam(
          _y1,
          ParamType.double,
        ),
      }.withoutNulls;

  static FlSpotStruct fromSerializableMap(Map<String, dynamic> data) =>
      FlSpotStruct(
        x1: deserializeParam(
          data['x1'],
          ParamType.double,
          false,
        ),
        y1: deserializeParam(
          data['y1'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'FlSpotStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FlSpotStruct && x1 == other.x1 && y1 == other.y1;
  }

  @override
  int get hashCode => const ListEquality().hash([x1, y1]);
}

FlSpotStruct createFlSpotStruct({
  double? x1,
  double? y1,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FlSpotStruct(
      x1: x1,
      y1: y1,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FlSpotStruct? updateFlSpotStruct(
  FlSpotStruct? flSpot, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    flSpot
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFlSpotStructData(
  Map<String, dynamic> firestoreData,
  FlSpotStruct? flSpot,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (flSpot == null) {
    return;
  }
  if (flSpot.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && flSpot.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final flSpotData = getFlSpotFirestoreData(flSpot, forFieldValue);
  final nestedData = flSpotData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = flSpot.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFlSpotFirestoreData(
  FlSpotStruct? flSpot, [
  bool forFieldValue = false,
]) {
  if (flSpot == null) {
    return {};
  }
  final firestoreData = mapToFirestore(flSpot.toMap());

  // Add any Firestore field values
  flSpot.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFlSpotListFirestoreData(
  List<FlSpotStruct>? flSpots,
) =>
    flSpots?.map((e) => getFlSpotFirestoreData(e, true)).toList() ?? [];
