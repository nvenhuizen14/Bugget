import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Plaid Group Code

class PlaidGroup {
  static String getBaseUrl() => 'https://production.plaid.com';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'PLAID-CLIENT-ID': '624b01822f47aa001ab532a8',
    'PLAID-SECRET': '7b3c6a9c07a072a581c13ec2b2fe24',
  };
  static CreateTokenCall createTokenCall = CreateTokenCall();
}

class CreateTokenCall {
  Future<ApiCallResponse> call({
    String? userId = 'khjkyh5g4',
  }) async {
    final baseUrl = PlaidGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user": {
    "client_user_id": "$userId"
  },
  "client_name": "Bugget",
  "country_codes": ["US"],
  "products": ["transactions"],
  "language": "en",
  "redirect_uri": "https://bugget.flutterflow.app/accounts"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Token',
      apiUrl: '$baseUrl/link/token/create',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'PLAID-CLIENT-ID': '624b01822f47aa001ab532a8',
        'PLAID-SECRET': '7b3c6a9c07a072a581c13ec2b2fe24',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? linkToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.link_token''',
      ));
  String? expiration(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiration''',
      ));
  String? requestID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.request_id''',
      ));
}

/// End Plaid Group Code

class LinkTokenCreateoneCall {
  static Future<ApiCallResponse> call({
    String? plaidClientId = '624b01822f47aa001ab532a8',
    String? plaidSecret = '7b3c6a9c07a072a581c13ec2b2fe24',
    String? universalOrAppLink = 'https://bugget.flutterflow.app',
  }) async {
    final ffApiRequestBody = '''
{
  "client_id": "$plaidClientId",
  "secret": "$plaidSecret",
  "client_name": "Bugget",
  "country_codes": [
    "US"
  ],
  "redirect_uri": "$universalOrAppLink",
  "webhook": "https://n8n.nvsolutionss.com/webhook/d5d13be4-b9a1-4435-acff-5562adbfea9c",
  "language": "en",
  "user": {
    "client_user_id": "a0732f17-5f13-4659-b7dc-57047a8866ed",
    "email_address": "nvenhuizen14@nvsolutions.online"
  },
  "products": [
    "transactions"
  ],
  "hosted_link": {
    "delivery_method": "email",
    "completion_redirect_uri": "https://bugget.flutterflow.app",
    "is_mobile_app": true,
    "url_lifetime_seconds": 900
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'linkTokenCreateone',
      apiUrl: 'https://production.plaid.com/link/token/create',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TransactionsCall {
  static Future<ApiCallResponse> call({
    String? userid1 = '1',
    String? userid2 = '2',
    String? date1 = '06/25/1998',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'transactions',
      apiUrl:
          'https://eqtwspinslicgwdcosnd.supabase.co/rest/v1/transactions?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVxdHdzcGluc2xpY2d3ZGNvc25kIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODU4MDE3MTEsImV4cCI6MjAwMTM3NzcxMX0.fQ16tSq_Vm4zYGHGoHR1uHt7p8WXXxNVqEKSAt2_htM',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVxdHdzcGluc2xpY2d3ZGNvc25kIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODU4MDE3MTEsImV4cCI6MjAwMTM3NzcxMX0.fQ16tSq_Vm4zYGHGoHR1uHt7p8WXXxNVqEKSAt2_htM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? category(dynamic response) => getJsonField(
        response,
        r'''$[:].category''',
        true,
      ) as List?;
  static List? groupName(dynamic response) => getJsonField(
        response,
        r'''$[:].group_name''',
        true,
      ) as List?;
  static List<double>? amount(dynamic response) => (getJsonField(
        response,
        r'''$[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List? institution(dynamic response) => getJsonField(
        response,
        r'''$[:].institution_name''',
        true,
      ) as List?;
  static List<String>? transactionid(dynamic response) => (getJsonField(
        response,
        r'''$[:].transaction_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? accountid(dynamic response) => (getJsonField(
        response,
        r'''$[:].account_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? dateadded(dynamic response) => (getJsonField(
        response,
        r'''$[:].date_added''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? createdat(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? transactionjson(dynamic response) => getJsonField(
        response,
        r'''$[:].transaction_json''',
        true,
      ) as List?;
  static List? pending(dynamic response) => getJsonField(
        response,
        r'''$[:].pending''',
        true,
      ) as List?;
  static List? merchantname(dynamic response) => getJsonField(
        response,
        r'''$[:].merchant_name''',
        true,
      ) as List?;
  static List? categoryid(dynamic response) => getJsonField(
        response,
        r'''$[:].category_id''',
        true,
      ) as List?;
  static List<bool>? template(dynamic response) => (getJsonField(
        response,
        r'''$[:].template''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<String>? updatedat(dynamic response) => (getJsonField(
        response,
        r'''$[:].updated_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? userid(dynamic response) => (getJsonField(
        response,
        r'''$[:].user_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? itemid(dynamic response) => (getJsonField(
        response,
        r'''$[:].item_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? accountname(dynamic response) => (getJsonField(
        response,
        r'''$[:].account_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class BackendCreateTokenCall {
  static Future<ApiCallResponse> call({
    String? userId = 'kjgklhg',
  }) async {
    final ffApiRequestBody = '''
{
  "client_user_id": "$userId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'BackendCreateToken',
      apiUrl:
          'https://worker-spring-queen-5a96.nvenhuizen14.workers.dev/fetchLinkToken',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BackendExchangeTokenCall {
  static Future<ApiCallResponse> call({
    String? publicToken = '',
    String? userId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "public_token": "$publicToken",
  "client_user_id": "$userId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'BackendExchangeToken',
      apiUrl:
          'https://worker-spring-queen-5a96.nvenhuizen14.workers.dev/publicToken',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
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

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
