// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeetingStruct extends FFFirebaseStruct {
  MeetingStruct({
    String? eventName,
    DateTime? from,
    DateTime? to,
    Color? background,
    bool? isAllDay,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _eventName = eventName,
        _from = from,
        _to = to,
        _background = background,
        _isAllDay = isAllDay,
        super(firestoreUtilData);

  // "eventName" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  set eventName(String? val) => _eventName = val;

  bool hasEventName() => _eventName != null;

  // "from" field.
  DateTime? _from;
  DateTime? get from => _from;
  set from(DateTime? val) => _from = val;

  bool hasFrom() => _from != null;

  // "to" field.
  DateTime? _to;
  DateTime? get to => _to;
  set to(DateTime? val) => _to = val;

  bool hasTo() => _to != null;

  // "background" field.
  Color? _background;
  Color? get background => _background;
  set background(Color? val) => _background = val;

  bool hasBackground() => _background != null;

  // "isAllDay" field.
  bool? _isAllDay;
  bool get isAllDay => _isAllDay ?? false;
  set isAllDay(bool? val) => _isAllDay = val;

  bool hasIsAllDay() => _isAllDay != null;

  static MeetingStruct fromMap(Map<String, dynamic> data) => MeetingStruct(
        eventName: data['eventName'] as String?,
        from: data['from'] as DateTime?,
        to: data['to'] as DateTime?,
        background: getSchemaColor(data['background']),
        isAllDay: data['isAllDay'] as bool?,
      );

  static MeetingStruct? maybeFromMap(dynamic data) =>
      data is Map ? MeetingStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'eventName': _eventName,
        'from': _from,
        'to': _to,
        'background': _background,
        'isAllDay': _isAllDay,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'eventName': serializeParam(
          _eventName,
          ParamType.String,
        ),
        'from': serializeParam(
          _from,
          ParamType.DateTime,
        ),
        'to': serializeParam(
          _to,
          ParamType.DateTime,
        ),
        'background': serializeParam(
          _background,
          ParamType.Color,
        ),
        'isAllDay': serializeParam(
          _isAllDay,
          ParamType.bool,
        ),
      }.withoutNulls;

  static MeetingStruct fromSerializableMap(Map<String, dynamic> data) =>
      MeetingStruct(
        eventName: deserializeParam(
          data['eventName'],
          ParamType.String,
          false,
        ),
        from: deserializeParam(
          data['from'],
          ParamType.DateTime,
          false,
        ),
        to: deserializeParam(
          data['to'],
          ParamType.DateTime,
          false,
        ),
        background: deserializeParam(
          data['background'],
          ParamType.Color,
          false,
        ),
        isAllDay: deserializeParam(
          data['isAllDay'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'MeetingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MeetingStruct &&
        eventName == other.eventName &&
        from == other.from &&
        to == other.to &&
        background == other.background &&
        isAllDay == other.isAllDay;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([eventName, from, to, background, isAllDay]);
}

MeetingStruct createMeetingStruct({
  String? eventName,
  DateTime? from,
  DateTime? to,
  Color? background,
  bool? isAllDay,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MeetingStruct(
      eventName: eventName,
      from: from,
      to: to,
      background: background,
      isAllDay: isAllDay,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MeetingStruct? updateMeetingStruct(
  MeetingStruct? meeting, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    meeting
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMeetingStructData(
  Map<String, dynamic> firestoreData,
  MeetingStruct? meeting,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (meeting == null) {
    return;
  }
  if (meeting.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && meeting.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final meetingData = getMeetingFirestoreData(meeting, forFieldValue);
  final nestedData = meetingData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = meeting.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMeetingFirestoreData(
  MeetingStruct? meeting, [
  bool forFieldValue = false,
]) {
  if (meeting == null) {
    return {};
  }
  final firestoreData = mapToFirestore(meeting.toMap());

  // Add any Firestore field values
  meeting.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMeetingListFirestoreData(
  List<MeetingStruct>? meetings,
) =>
    meetings?.map((e) => getMeetingFirestoreData(e, true)).toList() ?? [];
