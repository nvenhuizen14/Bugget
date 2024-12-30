// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionStruct extends FFFirebaseStruct {
  TransactionStruct({
    String? description,
    String? category,
    String? groupName,
    String? institutionName,
    String? transactionId,
    String? accountId,
    String? dateAdded,
    String? merchantName,
    String? pending,
    String? createdAt,
    TransactionJsonStruct? transactionJson,
    bool? template,
    String? updatedAt,
    String? userId,
    String? itemId,
    String? accountName,
    double? amount,
    int? categoryId,
    String? date,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _description = description,
        _category = category,
        _groupName = groupName,
        _institutionName = institutionName,
        _transactionId = transactionId,
        _accountId = accountId,
        _dateAdded = dateAdded,
        _merchantName = merchantName,
        _pending = pending,
        _createdAt = createdAt,
        _transactionJson = transactionJson,
        _template = template,
        _updatedAt = updatedAt,
        _userId = userId,
        _itemId = itemId,
        _accountName = accountName,
        _amount = amount,
        _categoryId = categoryId,
        _date = date,
        super(firestoreUtilData);

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "group_name" field.
  String? _groupName;
  String get groupName => _groupName ?? '';
  set groupName(String? val) => _groupName = val;

  bool hasGroupName() => _groupName != null;

  // "institution_name" field.
  String? _institutionName;
  String get institutionName => _institutionName ?? '';
  set institutionName(String? val) => _institutionName = val;

  bool hasInstitutionName() => _institutionName != null;

  // "transaction_id" field.
  String? _transactionId;
  String get transactionId => _transactionId ?? '';
  set transactionId(String? val) => _transactionId = val;

  bool hasTransactionId() => _transactionId != null;

  // "account_id" field.
  String? _accountId;
  String get accountId => _accountId ?? '';
  set accountId(String? val) => _accountId = val;

  bool hasAccountId() => _accountId != null;

  // "date_added" field.
  String? _dateAdded;
  String get dateAdded => _dateAdded ?? '';
  set dateAdded(String? val) => _dateAdded = val;

  bool hasDateAdded() => _dateAdded != null;

  // "merchant_name" field.
  String? _merchantName;
  String get merchantName => _merchantName ?? '';
  set merchantName(String? val) => _merchantName = val;

  bool hasMerchantName() => _merchantName != null;

  // "pending" field.
  String? _pending;
  String get pending => _pending ?? '';
  set pending(String? val) => _pending = val;

  bool hasPending() => _pending != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "transaction_json" field.
  TransactionJsonStruct? _transactionJson;
  TransactionJsonStruct get transactionJson =>
      _transactionJson ?? TransactionJsonStruct();
  set transactionJson(TransactionJsonStruct? val) => _transactionJson = val;

  void updateTransactionJson(Function(TransactionJsonStruct) updateFn) {
    updateFn(_transactionJson ??= TransactionJsonStruct());
  }

  bool hasTransactionJson() => _transactionJson != null;

  // "template" field.
  bool? _template;
  bool get template => _template ?? false;
  set template(bool? val) => _template = val;

  bool hasTemplate() => _template != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "item_id" field.
  String? _itemId;
  String get itemId => _itemId ?? '';
  set itemId(String? val) => _itemId = val;

  bool hasItemId() => _itemId != null;

  // "account_name" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  set accountName(String? val) => _accountName = val;

  bool hasAccountName() => _accountName != null;

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

  static TransactionStruct fromMap(Map<String, dynamic> data) =>
      TransactionStruct(
        description: data['description'] as String?,
        category: data['category'] as String?,
        groupName: data['group_name'] as String?,
        institutionName: data['institution_name'] as String?,
        transactionId: data['transaction_id'] as String?,
        accountId: data['account_id'] as String?,
        dateAdded: data['date_added'] as String?,
        merchantName: data['merchant_name'] as String?,
        pending: data['pending'] as String?,
        createdAt: data['created_at'] as String?,
        transactionJson: data['transaction_json'] is TransactionJsonStruct
            ? data['transaction_json']
            : TransactionJsonStruct.maybeFromMap(data['transaction_json']),
        template: data['template'] as bool?,
        updatedAt: data['updated_at'] as String?,
        userId: data['user_id'] as String?,
        itemId: data['item_id'] as String?,
        accountName: data['account_name'] as String?,
        amount: castToType<double>(data['amount']),
        categoryId: castToType<int>(data['category_id']),
        date: data['date'] as String?,
      );

  static TransactionStruct? maybeFromMap(dynamic data) => data is Map
      ? TransactionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'description': _description,
        'category': _category,
        'group_name': _groupName,
        'institution_name': _institutionName,
        'transaction_id': _transactionId,
        'account_id': _accountId,
        'date_added': _dateAdded,
        'merchant_name': _merchantName,
        'pending': _pending,
        'created_at': _createdAt,
        'transaction_json': _transactionJson?.toMap(),
        'template': _template,
        'updated_at': _updatedAt,
        'user_id': _userId,
        'item_id': _itemId,
        'account_name': _accountName,
        'amount': _amount,
        'category_id': _categoryId,
        'date': _date,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'group_name': serializeParam(
          _groupName,
          ParamType.String,
        ),
        'institution_name': serializeParam(
          _institutionName,
          ParamType.String,
        ),
        'transaction_id': serializeParam(
          _transactionId,
          ParamType.String,
        ),
        'account_id': serializeParam(
          _accountId,
          ParamType.String,
        ),
        'date_added': serializeParam(
          _dateAdded,
          ParamType.String,
        ),
        'merchant_name': serializeParam(
          _merchantName,
          ParamType.String,
        ),
        'pending': serializeParam(
          _pending,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'transaction_json': serializeParam(
          _transactionJson,
          ParamType.DataStruct,
        ),
        'template': serializeParam(
          _template,
          ParamType.bool,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.String,
        ),
        'item_id': serializeParam(
          _itemId,
          ParamType.String,
        ),
        'account_name': serializeParam(
          _accountName,
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

  static TransactionStruct fromSerializableMap(Map<String, dynamic> data) =>
      TransactionStruct(
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        groupName: deserializeParam(
          data['group_name'],
          ParamType.String,
          false,
        ),
        institutionName: deserializeParam(
          data['institution_name'],
          ParamType.String,
          false,
        ),
        transactionId: deserializeParam(
          data['transaction_id'],
          ParamType.String,
          false,
        ),
        accountId: deserializeParam(
          data['account_id'],
          ParamType.String,
          false,
        ),
        dateAdded: deserializeParam(
          data['date_added'],
          ParamType.String,
          false,
        ),
        merchantName: deserializeParam(
          data['merchant_name'],
          ParamType.String,
          false,
        ),
        pending: deserializeParam(
          data['pending'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        transactionJson: deserializeStructParam(
          data['transaction_json'],
          ParamType.DataStruct,
          false,
          structBuilder: TransactionJsonStruct.fromSerializableMap,
        ),
        template: deserializeParam(
          data['template'],
          ParamType.bool,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.String,
          false,
        ),
        itemId: deserializeParam(
          data['item_id'],
          ParamType.String,
          false,
        ),
        accountName: deserializeParam(
          data['account_name'],
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
  String toString() => 'TransactionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransactionStruct &&
        description == other.description &&
        category == other.category &&
        groupName == other.groupName &&
        institutionName == other.institutionName &&
        transactionId == other.transactionId &&
        accountId == other.accountId &&
        dateAdded == other.dateAdded &&
        merchantName == other.merchantName &&
        pending == other.pending &&
        createdAt == other.createdAt &&
        transactionJson == other.transactionJson &&
        template == other.template &&
        updatedAt == other.updatedAt &&
        userId == other.userId &&
        itemId == other.itemId &&
        accountName == other.accountName &&
        amount == other.amount &&
        categoryId == other.categoryId &&
        date == other.date;
  }

  @override
  int get hashCode => const ListEquality().hash([
        description,
        category,
        groupName,
        institutionName,
        transactionId,
        accountId,
        dateAdded,
        merchantName,
        pending,
        createdAt,
        transactionJson,
        template,
        updatedAt,
        userId,
        itemId,
        accountName,
        amount,
        categoryId,
        date
      ]);
}

TransactionStruct createTransactionStruct({
  String? description,
  String? category,
  String? groupName,
  String? institutionName,
  String? transactionId,
  String? accountId,
  String? dateAdded,
  String? merchantName,
  String? pending,
  String? createdAt,
  TransactionJsonStruct? transactionJson,
  bool? template,
  String? updatedAt,
  String? userId,
  String? itemId,
  String? accountName,
  double? amount,
  int? categoryId,
  String? date,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TransactionStruct(
      description: description,
      category: category,
      groupName: groupName,
      institutionName: institutionName,
      transactionId: transactionId,
      accountId: accountId,
      dateAdded: dateAdded,
      merchantName: merchantName,
      pending: pending,
      createdAt: createdAt,
      transactionJson: transactionJson ??
          (clearUnsetFields ? TransactionJsonStruct() : null),
      template: template,
      updatedAt: updatedAt,
      userId: userId,
      itemId: itemId,
      accountName: accountName,
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

TransactionStruct? updateTransactionStruct(
  TransactionStruct? transaction, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    transaction
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTransactionStructData(
  Map<String, dynamic> firestoreData,
  TransactionStruct? transaction,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (transaction == null) {
    return;
  }
  if (transaction.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && transaction.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final transactionData =
      getTransactionFirestoreData(transaction, forFieldValue);
  final nestedData =
      transactionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = transaction.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTransactionFirestoreData(
  TransactionStruct? transaction, [
  bool forFieldValue = false,
]) {
  if (transaction == null) {
    return {};
  }
  final firestoreData = mapToFirestore(transaction.toMap());

  // Handle nested data for "transaction_json" field.
  addTransactionJsonStructData(
    firestoreData,
    transaction.hasTransactionJson() ? transaction.transactionJson : null,
    'transaction_json',
    forFieldValue,
  );

  // Add any Firestore field values
  transaction.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTransactionListFirestoreData(
  List<TransactionStruct>? transactions,
) =>
    transactions?.map((e) => getTransactionFirestoreData(e, true)).toList() ??
    [];
