// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ImgNasaStruct extends FFFirebaseStruct {
  ImgNasaStruct({
    String? copyright,
    String? date,
    String? explanation,
    String? mediaType,
    String? serviceVersion,
    String? title,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _copyright = copyright,
        _date = date,
        _explanation = explanation,
        _mediaType = mediaType,
        _serviceVersion = serviceVersion,
        _title = title,
        super(firestoreUtilData);

  // "copyright" field.
  String? _copyright;
  String get copyright => _copyright ?? '';
  set copyright(String? val) => _copyright = val;

  bool hasCopyright() => _copyright != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;

  bool hasDate() => _date != null;

  // "explanation" field.
  String? _explanation;
  String get explanation => _explanation ?? '';
  set explanation(String? val) => _explanation = val;

  bool hasExplanation() => _explanation != null;

  // "media_type" field.
  String? _mediaType;
  String get mediaType => _mediaType ?? '';
  set mediaType(String? val) => _mediaType = val;

  bool hasMediaType() => _mediaType != null;

  // "service_version" field.
  String? _serviceVersion;
  String get serviceVersion => _serviceVersion ?? '';
  set serviceVersion(String? val) => _serviceVersion = val;

  bool hasServiceVersion() => _serviceVersion != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  static ImgNasaStruct fromMap(Map<String, dynamic> data) => ImgNasaStruct(
        copyright: data['copyright'] as String?,
        date: data['date'] as String?,
        explanation: data['explanation'] as String?,
        mediaType: data['media_type'] as String?,
        serviceVersion: data['service_version'] as String?,
        title: data['title'] as String?,
      );

  static ImgNasaStruct? maybeFromMap(dynamic data) =>
      data is Map ? ImgNasaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'copyright': _copyright,
        'date': _date,
        'explanation': _explanation,
        'media_type': _mediaType,
        'service_version': _serviceVersion,
        'title': _title,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'copyright': serializeParam(
          _copyright,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'explanation': serializeParam(
          _explanation,
          ParamType.String,
        ),
        'media_type': serializeParam(
          _mediaType,
          ParamType.String,
        ),
        'service_version': serializeParam(
          _serviceVersion,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
      }.withoutNulls;

  static ImgNasaStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImgNasaStruct(
        copyright: deserializeParam(
          data['copyright'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        explanation: deserializeParam(
          data['explanation'],
          ParamType.String,
          false,
        ),
        mediaType: deserializeParam(
          data['media_type'],
          ParamType.String,
          false,
        ),
        serviceVersion: deserializeParam(
          data['service_version'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ImgNasaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImgNasaStruct &&
        copyright == other.copyright &&
        date == other.date &&
        explanation == other.explanation &&
        mediaType == other.mediaType &&
        serviceVersion == other.serviceVersion &&
        title == other.title;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([copyright, date, explanation, mediaType, serviceVersion, title]);
}

ImgNasaStruct createImgNasaStruct({
  String? copyright,
  String? date,
  String? explanation,
  String? mediaType,
  String? serviceVersion,
  String? title,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ImgNasaStruct(
      copyright: copyright,
      date: date,
      explanation: explanation,
      mediaType: mediaType,
      serviceVersion: serviceVersion,
      title: title,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ImgNasaStruct? updateImgNasaStruct(
  ImgNasaStruct? imgNasa, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    imgNasa
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addImgNasaStructData(
  Map<String, dynamic> firestoreData,
  ImgNasaStruct? imgNasa,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (imgNasa == null) {
    return;
  }
  if (imgNasa.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && imgNasa.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final imgNasaData = getImgNasaFirestoreData(imgNasa, forFieldValue);
  final nestedData = imgNasaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = imgNasa.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getImgNasaFirestoreData(
  ImgNasaStruct? imgNasa, [
  bool forFieldValue = false,
]) {
  if (imgNasa == null) {
    return {};
  }
  final firestoreData = mapToFirestore(imgNasa.toMap());

  // Add any Firestore field values
  imgNasa.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getImgNasaListFirestoreData(
  List<ImgNasaStruct>? imgNasas,
) =>
    imgNasas?.map((e) => getImgNasaFirestoreData(e, true)).toList() ?? [];
