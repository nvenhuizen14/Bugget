// ignore_for_file: unused_element

import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Supabase Group Code

class SupabaseGroup {
  static String baseUrl = 'https://eqtwspinslicgwdcosnd.supabase.co/rest/v1';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVxdHdzcGluc2xpY2d3ZGNvc25kIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4NTgwMTcxMSwiZXhwIjoyMDAxMzc3NzExfQ.YlD2SlJYryBQPjkEdGDqLkz91pUwWBsdD7Sko8xuQB0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVxdHdzcGluc2xpY2d3ZGNvc25kIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4NTgwMTcxMSwiZXhwIjoyMDAxMzc3NzExfQ.YlD2SlJYryBQPjkEdGDqLkz91pUwWBsdD7Sko8xuQB0',
  };
  static SELECTALLFROMTransactioncategoryCall
      sELECTALLFROMTransactioncategoryCall =
      SELECTALLFROMTransactioncategoryCall();
  static TransactionCategoryForeginKeytransactionGroupCall
      transactionCategoryForeginKeytransactionGroupCall =
      TransactionCategoryForeginKeytransactionGroupCall();
  static BudgetingCall budgetingCall = BudgetingCall();
  static SELECTALLFROMTransactionGroupCall sELECTALLFROMTransactionGroupCall =
      SELECTALLFROMTransactionGroupCall();
}

class SELECTALLFROMTransactioncategoryCall {
  Future<ApiCallResponse> call({
    String? foreignKey = '',
    String? someColumn = '',
    String? otherTable = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SELECT ALL FROM transactioncategory',
      apiUrl: '${SupabaseGroup.baseUrl}/transaction_category',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVxdHdzcGluc2xpY2d3ZGNvc25kIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4NTgwMTcxMSwiZXhwIjoyMDAxMzc3NzExfQ.YlD2SlJYryBQPjkEdGDqLkz91pUwWBsdD7Sko8xuQB0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVxdHdzcGluc2xpY2d3ZGNvc25kIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4NTgwMTcxMSwiZXhwIjoyMDAxMzc3NzExfQ.YlD2SlJYryBQPjkEdGDqLkz91pUwWBsdD7Sko8xuQB0',
      },
      params: {
        'select': "*",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      alwaysAllowBody: false,
    );
  }

  List<String>? categoryNames(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? categoryTypes(dynamic response) => (getJsonField(
        response,
        r'''$[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? categoryShow(dynamic response) => getJsonField(
        response,
        r'''$[:].show''',
        true,
      ) as List?;
  List<int>? categoryId(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? categoryRelatedGroupID(dynamic response) => (getJsonField(
        response,
        r'''$[:].group_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? categoryName1(dynamic response) => (getJsonField(
        response,
        r'''$[0].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class TransactionCategoryForeginKeytransactionGroupCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'transactionCategoryForeginKeytransactionGroup',
      apiUrl:
          '${SupabaseGroup.baseUrl}/transaction_category?select=group_id,transaction_group(name)',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVxdHdzcGluc2xpY2d3ZGNvc25kIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4NTgwMTcxMSwiZXhwIjoyMDAxMzc3NzExfQ.YlD2SlJYryBQPjkEdGDqLkz91pUwWBsdD7Sko8xuQB0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVxdHdzcGluc2xpY2d3ZGNvc25kIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4NTgwMTcxMSwiZXhwIjoyMDAxMzc3NzExfQ.YlD2SlJYryBQPjkEdGDqLkz91pUwWBsdD7Sko8xuQB0',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? groupid(dynamic response) => (getJsonField(
        response,
        r'''$[:].group_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List? transactionGroup(dynamic response) => getJsonField(
        response,
        r'''$[:].transaction_group''',
        true,
      ) as List?;
  List<String>? transactionGroupName(dynamic response) => (getJsonField(
        response,
        r'''$[:].transaction_group.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class BudgetingCall {
  Future<ApiCallResponse> call({
    String? group = 'null',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'budgeting',
      apiUrl: '${SupabaseGroup.baseUrl}/budgeting',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVxdHdzcGluc2xpY2d3ZGNvc25kIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4NTgwMTcxMSwiZXhwIjoyMDAxMzc3NzExfQ.YlD2SlJYryBQPjkEdGDqLkz91pUwWBsdD7Sko8xuQB0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVxdHdzcGluc2xpY2d3ZGNvc25kIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4NTgwMTcxMSwiZXhwIjoyMDAxMzc3NzExfQ.YlD2SlJYryBQPjkEdGDqLkz91pUwWBsdD7Sko8xuQB0',
        'Content-Type': 'application/json',
      },
      params: {
        'group': group,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? budgetItem(dynamic response) => getJsonField(
        response,
        r'''$[:].budget_item''',
        true,
      ) as List?;
  List? group(dynamic response) => getJsonField(
        response,
        r'''$[:].group''',
        true,
      ) as List?;
  List? recurring(dynamic response) => getJsonField(
        response,
        r'''$[:].recurring''',
        true,
      ) as List?;
  List? budgetLimit(dynamic response) => getJsonField(
        response,
        r'''$[:].budget_limit''',
        true,
      ) as List?;
  List? budgetActual(dynamic response) => getJsonField(
        response,
        r'''$[:].budget_actual''',
        true,
      ) as List?;
  List? budgetRemaining(dynamic response) => getJsonField(
        response,
        r'''$[:].budget_remaining''',
        true,
      ) as List?;
  List? budgetPercent(dynamic response) => getJsonField(
        response,
        r'''$[:].budget_percentage''',
        true,
      ) as List?;
  List? transactionCount(dynamic response) => getJsonField(
        response,
        r'''$[:].transaction_count''',
        true,
      ) as List?;
  List? startDate(dynamic response) => getJsonField(
        response,
        r'''$[:].budget_start_date''',
        true,
      ) as List?;
  List? endDate(dynamic response) => getJsonField(
        response,
        r'''$[:].budget_end_date''',
        true,
      ) as List?;
}

class SELECTALLFROMTransactionGroupCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'SELECT ALL FROM transaction group',
      apiUrl: '${SupabaseGroup.baseUrl}/transaction_group',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVxdHdzcGluc2xpY2d3ZGNvc25kIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4NTgwMTcxMSwiZXhwIjoyMDAxMzc3NzExfQ.YlD2SlJYryBQPjkEdGDqLkz91pUwWBsdD7Sko8xuQB0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVxdHdzcGluc2xpY2d3ZGNvc25kIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4NTgwMTcxMSwiZXhwIjoyMDAxMzc3NzExfQ.YlD2SlJYryBQPjkEdGDqLkz91pUwWBsdD7Sko8xuQB0',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?;
  List? name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?;
  List? createdAt(dynamic response) => getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?;
}

/// End Supabase Group Code

class AllTransactionsCopyCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'All Transactions Copy',
      apiUrl: 'http://localhost:8055/items/Transactions?limit=20',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer 29mnn9VHbnUq5eNXfHHLXqmvkqAMKth1',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TrainModelCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Train Model',
      apiUrl: 'https://buggetml.nvsolutionss.com/train',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic accuracy(dynamic response) => getJsonField(
        response,
        r'''$.accuracy''',
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class GetCategoryAmountThisMonthCall {
  static Future<ApiCallResponse> call({
    String? labels = '',
    String? data = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getCategoryAmountThisMonth',
      apiUrl:
          'https://n8n.nvsolutionss.com/webhook/7c213390-3ef0-42ff-add7-59aacb5b8bf8',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'labels': labels,
        'data': data,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? all(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static List? labels(dynamic response) => getJsonField(
        response,
        r'''$[:].labels''',
        true,
      ) as List?;
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$[:].data''',
        true,
      ) as List?;
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
