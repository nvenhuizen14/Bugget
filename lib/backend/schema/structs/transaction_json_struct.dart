// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TransactionJsonStruct extends FFFirebaseStruct {
  TransactionJsonStruct({
    String? itemId,
    String? pending,
    String? userId,
    String? category,
    bool? template,
    String? accountId,
    String? createdAt,
    String? dateAdded,
    String? groupName,
    String? updatedAt,
    String? description,
    String? accountName,
    String? merchantName,
    String? transactionId,
    String? institutionName,
    String? transactionJson,
    double? amount,
    int? categoryId,
    String? date,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _itemId = itemId,
        _pending = pending,
        _userId = userId,
        _category = category,
        _template = template,
        _accountId = accountId,
        _createdAt = createdAt,
        _dateAdded = dateAdded,
        _groupName = groupName,
        _updatedAt = updatedAt,
        _description = description,
        _accountName = accountName,
        _merchantName = merchantName,
        _transactionId = transactionId,
        _institutionName = institutionName,
        _transactionJson = transactionJson,
        _amount = amount,
        _categoryId = categoryId,
        _date = date,
        super(firestoreUtilData);

  // "item_id" field.
  String? _itemId;
  String get itemId => _itemId ?? '';
  set itemId(String? val) => _itemId = val;

  bool hasItemId() => _itemId != null;

  // "pending" field.
  String? _pending;
  String get pending => _pending ?? '';
  set pending(String? val) => _pending = val;

  bool hasPending() => _pending != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "template" field.
  bool? _template;
  bool get template => _template ?? false;
  set template(bool? val) => _template = val;

  bool hasTemplate() => _template != null;

  // "account_id" field.
  String? _accountId;
  String get accountId => _accountId ?? '';
  set accountId(String? val) => _accountId = val;

  bool hasAccountId() => _accountId != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "date_added" field.
  String? _dateAdded;
  String get dateAdded => _dateAdded ?? '';
  set dateAdded(String? val) => _dateAdded = val;

  bool hasDateAdded() => _dateAdded != null;

  // "group_name" field.
  String? _groupName;
  String get groupName => _groupName ?? '';
  set groupName(String? val) => _groupName = val;

  bool hasGroupName() => _groupName != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "account_name" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  set accountName(String? val) => _accountName = val;

  bool hasAccountName() => _accountName != null;

  // "merchant_name" field.
  String? _merchantName;
  String get merchantName => _merchantName ?? '';
  set merchantName(String? val) => _merchantName = val;

  bool hasMerchantName() => _merchantName != null;

  // "transaction_id" field.
  String? _transactionId;
  String get transactionId => _transactionId ?? '';
  set transactionId(String? val) => _transactionId = val;

  bool hasTransactionId() => _transactionId != null;

  // "institution_name" field.
  String? _institutionName;
  String get institutionName => _institutionName ?? '';
  set institutionName(String? val) => _institutionName = val;

  bool hasInstitutionName() => _institutionName != null;

  // "transaction_json" field.
  String? _transactionJson;
  String get transactionJson => _transactionJson ?? '';
  set transactionJson(String? val) => _transactionJson = val;

  bool hasTransactionJson() => _transactionJson != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "category_id" field.
  int? _categoryId;
  int get categoryId => _categoryId ?? 0;
  set categoryId(int? val) => _categoryId = val;

  void incrementCategoryId(int amount) => categoryId = categoryId + amount;

  bool hasCategoryId() => _categoryId != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;

  bool hasDate() => _date != null;

  static TransactionJsonStruct fromMap(Map<String, dynamic> data) =>
      TransactionJsonStruct(
        itemId: data['item_id'] as String?,
        pending: data['pending'] as String?,
        userId: data['user_id'] as String?,
        category: data['category'] as String?,
        template: data['template'] as bool?,
        accountId: data['account_id'] as String?,
        createdAt: data['created_at'] as String?,
        dateAdded: data['date_added'] as String?,
        groupName: data['group_name'] as String?,
        updatedAt: data['updated_at'] as String?,
        description: data['description'] as String?,
        accountName: data['account_name'] as String?,
        merchantName: data['merchant_name'] as String?,
        transactionId: data['transaction_id'] as String?,
        institutionName: data['institution_name'] as String?,
        transactionJson: data['transaction_json'] as String?,
        amount: castToType<double>(data['amount']),
        categoryId: castToType<int>(data['category_id']),
        date: data['date'] as String?,
      );

  static TransactionJsonStruct? maybeFromMap(dynamic data) => data is Map
      ? TransactionJsonStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'item_id': _itemId,
        'pending': _pending,
        'user_id': _userId,
        'category': _category,
        'template': _template,
        'account_id': _accountId,
        'created_at': _createdAt,
        'date_added': _dateAdded,
        'group_name': _groupName,
        'updated_at': _updatedAt,
        'description': _description,
        'account_name': _accountName,
        'merchant_name': _merchantName,
        'transaction_id': _transactionId,
        'institution_name': _institutionName,
        'transaction_json': _transactionJson,
        'amount': _amount,
        'category_id': _categoryId,
        'date': _date,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'item_id': serializeParam(
          _itemId,
          ParamType.String,
        ),
        'pending': serializeParam(
          _pending,
          ParamType.String,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'template': serializeParam(
          _template,
          ParamType.bool,
        ),
        'account_id': serializeParam(
          _accountId,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'date_added': serializeParam(
          _dateAdded,
          ParamType.String,
        ),
        'group_name': serializeParam(
          _groupName,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'account_name': serializeParam(
          _accountName,
          ParamType.String,
        ),
        'merchant_name': serializeParam(
          _merchantName,
          ParamType.String,
        ),
        'transaction_id': serializeParam(
          _transactionId,
          ParamType.String,
        ),
        'institution_name': serializeParam(
          _institutionName,
          ParamType.String,
        ),
        'transaction_json': serializeParam(
          _transactionJson,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'category_id': serializeParam(
          _categoryId,
          ParamType.int,
        ),
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
      }.withoutNulls;

  static TransactionJsonStruct fromSerializableMap(Map<String, dynamic> data) =>
      TransactionJsonStruct(
        itemId: deserializeParam(
          data['item_id'],
          ParamType.String,
          false,
        ),
        pending: deserializeParam(
          data['pending'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        template: deserializeParam(
          data['template'],
          ParamType.bool,
          false,
        ),
        accountId: deserializeParam(
          data['account_id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        dateAdded: deserializeParam(
          data['date_added'],
          ParamType.String,
          false,
        ),
        groupName: deserializeParam(
          data['group_name'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        accountName: deserializeParam(
          data['account_name'],
          ParamType.String,
          false,
        ),
        merchantName: deserializeParam(
          data['merchant_name'],
          ParamType.String,
          false,
        ),
        transactionId: deserializeParam(
          data['transaction_id'],
          ParamType.String,
          false,
        ),
        institutionName: deserializeParam(
          data['institution_name'],
          ParamType.String,
          false,
        ),
        transactionJson: deserializeParam(
          data['transaction_json'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        categoryId: deserializeParam(
          data['category_id'],
          ParamType.int,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TransactionJsonStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransactionJsonStruct &&
        itemId == other.itemId &&
        pending == other.pending &&
        userId == other.userId &&
        category == other.category &&
        template == other.template &&
        accountId == other.accountId &&
        createdAt == other.createdAt &&
        dateAdded == other.dateAdded &&
        groupName == other.groupName &&
        updatedAt == other.updatedAt &&
        description == other.description &&
        accountName == other.accountName &&
        merchantName == other.merchantName &&
        transactionId == other.transactionId &&
        institutionName == other.institutionName &&
        transactionJson == other.transactionJson &&
        amount == other.amount &&
        categoryId == other.categoryId &&
        date == other.date;
  }

  @override
  int get hashCode => const ListEquality().hash([
        itemId,
        pending,
        userId,
        category,
        template,
        accountId,
        createdAt,
        dateAdded,
        groupName,
        updatedAt,
        description,
        accountName,
        merchantName,
        transactionId,
        institutionName,
        transactionJson,
        amount,
        categoryId,
        date
      ]);
}

TransactionJsonStruct createTransactionJsonStruct({
  String? itemId,
  String? pending,
  String? userId,
  String? category,
  bool? template,
  String? accountId,
  String? createdAt,
  String? dateAdded,
  String? groupName,
  String? updatedAt,
  String? description,
  String? accountName,
  String? merchantName,
  String? transactionId,
  String? institutionName,
  String? transactionJson,
  double? amount,
  int? categoryId,
  String? date,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TransactionJsonStruct(
      itemId: itemId,
      pending: pending,
      userId: userId,
      category: category,
      template: template,
      accountId: accountId,
      createdAt: createdAt,
      dateAdded: dateAdded,
      groupName: groupName,
      updatedAt: updatedAt,
      description: description,
      accountName: accountName,
      merchantName: merchantName,
      transactionId: transactionId,
      institutionName: institutionName,
      transactionJson: transactionJson,
      amount: amount,
      categoryId: categoryId,
      date: date,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TransactionJsonStruct? updateTransactionJsonStruct(
  TransactionJsonStruct? transactionJsonStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    transactionJsonStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTransactionJsonStructData(
  Map<String, dynamic> firestoreData,
  TransactionJsonStruct? transactionJsonStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (transactionJsonStruct == null) {
    return;
  }
  if (transactionJsonStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      transactionJsonStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final transactionJsonStructData =
      getTransactionJsonFirestoreData(transactionJsonStruct, forFieldValue);
  final nestedData =
      transactionJsonStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      transactionJsonStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTransactionJsonFirestoreData(
  TransactionJsonStruct? transactionJsonStruct, [
  bool forFieldValue = false,
]) {
  if (transactionJsonStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(transactionJsonStruct.toMap());

  // Add any Firestore field values
  transactionJsonStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTransactionJsonListFirestoreData(
  List<TransactionJsonStruct>? transactionJsonStructs,
) =>
    transactionJsonStructs
        ?.map((e) => getTransactionJsonFirestoreData(e, true))
        .toList() ??
    [];
