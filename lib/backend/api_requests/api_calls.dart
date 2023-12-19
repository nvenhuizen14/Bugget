

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

// ignore: unused_element
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
          .cast<String>();
  List<String>? categoryTypes(dynamic response) => (getJsonField(
        response,
        r'''$[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .cast<String>();
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
          .cast<int>();
  List<int>? categoryRelatedGroupID(dynamic response) => (getJsonField(
        response,
        r'''$[:].group_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .cast<int>();
  List<String>? categoryName1(dynamic response) => (getJsonField(
        response,
        r'''$[0].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .cast<String>();
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
          .cast<int>();
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
          .cast<String>();
}

/// End Supabase Group Code

/// Start The Plaid API Group Code

class ThePlaidAPIGroup {
  static String baseUrl = 'https://production.plaid.com';
  static Map<String, String> headers = {};
  static AssetReportCreateCall assetReportCreateCall = AssetReportCreateCall();
  static AssetReportGetCall assetReportGetCall = AssetReportGetCall();
  static AssetReportPdfGetCall assetReportPdfGetCall = AssetReportPdfGetCall();
  static AssetReportRefreshCall assetReportRefreshCall =
      AssetReportRefreshCall();
  static AssetReportFilterCall assetReportFilterCall = AssetReportFilterCall();
  static AssetReportRemoveCall assetReportRemoveCall = AssetReportRemoveCall();
  static AssetReportAuditCopyCreateCall assetReportAuditCopyCreateCall =
      AssetReportAuditCopyCreateCall();
  static AssetReportAuditCopyGetCall assetReportAuditCopyGetCall =
      AssetReportAuditCopyGetCall();
  static AssetReportAuditCopyRemoveCall assetReportAuditCopyRemoveCall =
      AssetReportAuditCopyRemoveCall();
  static BaseReportGetCall baseReportGetCall = BaseReportGetCall();
  static CreditAuditCopyTokenUpdateCall creditAuditCopyTokenUpdateCall =
      CreditAuditCopyTokenUpdateCall();
  static CraBankIncomeGetCall craBankIncomeGetCall = CraBankIncomeGetCall();
  static StatementsListCall statementsListCall = StatementsListCall();
  static StatementsDownloadCall statementsDownloadCall =
      StatementsDownloadCall();
  static ItemActivityListCall itemActivityListCall = ItemActivityListCall();
  static ItemApplicationListCall itemApplicationListCall =
      ItemApplicationListCall();
  static ItemApplicationScopesUpdateCall itemApplicationScopesUpdateCall =
      ItemApplicationScopesUpdateCall();
  static ApplicationGetCall applicationGetCall = ApplicationGetCall();
  static ItemGetCall itemGetCall = ItemGetCall();
  static AuthGetCall authGetCall = AuthGetCall();
  static TransactionsGetCall transactionsGetCall = TransactionsGetCall();
  static TransactionsRefreshCall transactionsRefreshCall =
      TransactionsRefreshCall();
  static TransactionsRecurringGetCall transactionsRecurringGetCall =
      TransactionsRecurringGetCall();
  static TransactionsSyncCall transactionsSyncCall = TransactionsSyncCall();
  static TransactionsEnrichCall transactionsEnrichCall =
      TransactionsEnrichCall();
  static InstitutionsGetCall institutionsGetCall = InstitutionsGetCall();
  static InstitutionsSearchCall institutionsSearchCall =
      InstitutionsSearchCall();
  static InstitutionsGetByIdCall institutionsGetByIdCall =
      InstitutionsGetByIdCall();
  static ItemRemoveCall itemRemoveCall = ItemRemoveCall();
  static AccountsGetCall accountsGetCall = AccountsGetCall();
  static CategoriesGetCall categoriesGetCall = CategoriesGetCall();
  static SandboxProcessorTokenCreateCall sandboxProcessorTokenCreateCall =
      SandboxProcessorTokenCreateCall();
  static SandboxPublicTokenCreateCall sandboxPublicTokenCreateCall =
      SandboxPublicTokenCreateCall();
  static SandboxItemFireWebhookCall sandboxItemFireWebhookCall =
      SandboxItemFireWebhookCall();
  static AccountsBalanceGetCall accountsBalanceGetCall =
      AccountsBalanceGetCall();
  static IdentityGetCall identityGetCall = IdentityGetCall();
  static IdentityMatchCall identityMatchCall = IdentityMatchCall();
  static IdentityRefreshCall identityRefreshCall = IdentityRefreshCall();
  static DashboardUserGetCall dashboardUserGetCall = DashboardUserGetCall();
  static DashboardUserListCall dashboardUserListCall = DashboardUserListCall();
  static IdentityVerificationCreateCall identityVerificationCreateCall =
      IdentityVerificationCreateCall();
  static IdentityVerificationGetCall identityVerificationGetCall =
      IdentityVerificationGetCall();
  static IdentityVerificationListCall identityVerificationListCall =
      IdentityVerificationListCall();
  static IdentityVerificationRetryCall identityVerificationRetryCall =
      IdentityVerificationRetryCall();
  static WatchlistScreeningEntityCreateCall watchlistScreeningEntityCreateCall =
      WatchlistScreeningEntityCreateCall();
  static WatchlistScreeningEntityGetCall watchlistScreeningEntityGetCall =
      WatchlistScreeningEntityGetCall();
  static WatchlistScreeningEntityHistoryListCall
      watchlistScreeningEntityHistoryListCall =
      WatchlistScreeningEntityHistoryListCall();
  static WatchlistScreeningEntityHitListCall
      watchlistScreeningEntityHitListCall =
      WatchlistScreeningEntityHitListCall();
  static WatchlistScreeningEntityListCall watchlistScreeningEntityListCall =
      WatchlistScreeningEntityListCall();
  static WatchlistScreeningEntityProgramGetCall
      watchlistScreeningEntityProgramGetCall =
      WatchlistScreeningEntityProgramGetCall();
  static WatchlistScreeningEntityProgramListCall
      watchlistScreeningEntityProgramListCall =
      WatchlistScreeningEntityProgramListCall();
  static WatchlistScreeningEntityReviewCreateCall
      watchlistScreeningEntityReviewCreateCall =
      WatchlistScreeningEntityReviewCreateCall();
  static WatchlistScreeningEntityReviewListCall
      watchlistScreeningEntityReviewListCall =
      WatchlistScreeningEntityReviewListCall();
  static WatchlistScreeningEntityUpdateCall watchlistScreeningEntityUpdateCall =
      WatchlistScreeningEntityUpdateCall();
  static WatchlistScreeningIndividualCreateCall
      watchlistScreeningIndividualCreateCall =
      WatchlistScreeningIndividualCreateCall();
  static WatchlistScreeningIndividualGetCall
      watchlistScreeningIndividualGetCall =
      WatchlistScreeningIndividualGetCall();
  static WatchlistScreeningIndividualHistoryListCall
      watchlistScreeningIndividualHistoryListCall =
      WatchlistScreeningIndividualHistoryListCall();
  static WatchlistScreeningIndividualHitListCall
      watchlistScreeningIndividualHitListCall =
      WatchlistScreeningIndividualHitListCall();
  static WatchlistScreeningIndividualListCall
      watchlistScreeningIndividualListCall =
      WatchlistScreeningIndividualListCall();
  static WatchlistScreeningIndividualProgramGetCall
      watchlistScreeningIndividualProgramGetCall =
      WatchlistScreeningIndividualProgramGetCall();
  static WatchlistScreeningIndividualProgramListCall
      watchlistScreeningIndividualProgramListCall =
      WatchlistScreeningIndividualProgramListCall();
  static WatchlistScreeningIndividualReviewCreateCall
      watchlistScreeningIndividualReviewCreateCall =
      WatchlistScreeningIndividualReviewCreateCall();
  static WatchlistScreeningIndividualReviewListCall
      watchlistScreeningIndividualReviewListCall =
      WatchlistScreeningIndividualReviewListCall();
  static WatchlistScreeningIndividualUpdateCall
      watchlistScreeningIndividualUpdateCall =
      WatchlistScreeningIndividualUpdateCall();
  static BeaconUserCreateCall beaconUserCreateCall = BeaconUserCreateCall();
  static BeaconUserGetCall beaconUserGetCall = BeaconUserGetCall();
  static BeaconReportCreateCall beaconReportCreateCall =
      BeaconReportCreateCall();
  static BeaconReportListCall beaconReportListCall = BeaconReportListCall();
  static BeaconReportSyndicationListCall beaconReportSyndicationListCall =
      BeaconReportSyndicationListCall();
  static ProcessorAuthGetCall processorAuthGetCall = ProcessorAuthGetCall();
  static ProcessorAccountGetCall processorAccountGetCall =
      ProcessorAccountGetCall();
  static ProcessorTransactionsGetCall processorTransactionsGetCall =
      ProcessorTransactionsGetCall();
  static ProcessorTransactionsSyncCall processorTransactionsSyncCall =
      ProcessorTransactionsSyncCall();
  static ProcessorTransactionsRefreshCall processorTransactionsRefreshCall =
      ProcessorTransactionsRefreshCall();
  static ProcessorTransactionsRecurringGetCall
      processorTransactionsRecurringGetCall =
      ProcessorTransactionsRecurringGetCall();
  static ProcessorSignalEvaluateCall processorSignalEvaluateCall =
      ProcessorSignalEvaluateCall();
  static ProcessorSignalDecisionReportCall processorSignalDecisionReportCall =
      ProcessorSignalDecisionReportCall();
  static ProcessorSignalReturnReportCall processorSignalReturnReportCall =
      ProcessorSignalReturnReportCall();
  static ProcessorBankTransferCreateCall processorBankTransferCreateCall =
      ProcessorBankTransferCreateCall();
  static ProcessorIdentityGetCall processorIdentityGetCall =
      ProcessorIdentityGetCall();
  static ProcessorIdentityMatchCall processorIdentityMatchCall =
      ProcessorIdentityMatchCall();
  static ProcessorBalanceGetCall processorBalanceGetCall =
      ProcessorBalanceGetCall();
  static ItemWebhookUpdateCall itemWebhookUpdateCall = ItemWebhookUpdateCall();
  static ItemAccessTokenInvalidateCall itemAccessTokenInvalidateCall =
      ItemAccessTokenInvalidateCall();
  static WebhookVerificationKeyGetCall webhookVerificationKeyGetCall =
      WebhookVerificationKeyGetCall();
  static LiabilitiesGetCall liabilitiesGetCall = LiabilitiesGetCall();
  static PaymentInitiationRecipientCreateCall
      paymentInitiationRecipientCreateCall =
      PaymentInitiationRecipientCreateCall();
  static PaymentInitiationPaymentReverseCall
      paymentInitiationPaymentReverseCall =
      PaymentInitiationPaymentReverseCall();
  static PaymentInitiationRecipientGetCall paymentInitiationRecipientGetCall =
      PaymentInitiationRecipientGetCall();
  static PaymentInitiationRecipientListCall paymentInitiationRecipientListCall =
      PaymentInitiationRecipientListCall();
  static PaymentInitiationPaymentCreateCall paymentInitiationPaymentCreateCall =
      PaymentInitiationPaymentCreateCall();
  static CreatePaymentTokenCall createPaymentTokenCall =
      CreatePaymentTokenCall();
  static PaymentInitiationConsentCreateCall paymentInitiationConsentCreateCall =
      PaymentInitiationConsentCreateCall();
  static PaymentInitiationConsentGetCall paymentInitiationConsentGetCall =
      PaymentInitiationConsentGetCall();
  static PaymentInitiationConsentRevokeCall paymentInitiationConsentRevokeCall =
      PaymentInitiationConsentRevokeCall();
  static PaymentInitiationConsentPaymentExecuteCall
      paymentInitiationConsentPaymentExecuteCall =
      PaymentInitiationConsentPaymentExecuteCall();
  static SandboxItemResetLoginCall sandboxItemResetLoginCall =
      SandboxItemResetLoginCall();
  static SandboxItemSetVerificationStatusCall
      sandboxItemSetVerificationStatusCall =
      SandboxItemSetVerificationStatusCall();
  static ItemPublicTokenExchangeCall itemPublicTokenExchangeCall =
      ItemPublicTokenExchangeCall();
  static ItemCreatePublicTokenCall itemCreatePublicTokenCall =
      ItemCreatePublicTokenCall();
  static UserCreateCall userCreateCall = UserCreateCall();
  static UserUpdateCall userUpdateCall = UserUpdateCall();
  static CreditSessionsGetCall creditSessionsGetCall = CreditSessionsGetCall();
  static PaymentInitiationPaymentGetCall paymentInitiationPaymentGetCall =
      PaymentInitiationPaymentGetCall();
  static PaymentInitiationPaymentListCall paymentInitiationPaymentListCall =
      PaymentInitiationPaymentListCall();
  static InvestmentsHoldingsGetCall investmentsHoldingsGetCall =
      InvestmentsHoldingsGetCall();
  static InvestmentsTransactionsGetCall investmentsTransactionsGetCall =
      InvestmentsTransactionsGetCall();
  static InvestmentsRefreshCall investmentsRefreshCall =
      InvestmentsRefreshCall();
  static InvestmentsAuthGetCall investmentsAuthGetCall =
      InvestmentsAuthGetCall();
  static ProcessorTokenCreateCall processorTokenCreateCall =
      ProcessorTokenCreateCall();
  static ProcessorTokenPermissionsSetCall processorTokenPermissionsSetCall =
      ProcessorTokenPermissionsSetCall();
  static ProcessorTokenPermissionsGetCall processorTokenPermissionsGetCall =
      ProcessorTokenPermissionsGetCall();
  static ProcessorTokenWebhookUpdateCall processorTokenWebhookUpdateCall =
      ProcessorTokenWebhookUpdateCall();
  static ProcessorStripeBankAccountTokenCreateCall
      processorStripeBankAccountTokenCreateCall =
      ProcessorStripeBankAccountTokenCreateCall();
  static ProcessorApexProcessorTokenCreateCall
      processorApexProcessorTokenCreateCall =
      ProcessorApexProcessorTokenCreateCall();
  static DepositSwitchCreateCall depositSwitchCreateCall =
      DepositSwitchCreateCall();
  static ItemImportCall itemImportCall = ItemImportCall();
  static DepositSwitchTokenCreateCall depositSwitchTokenCreateCall =
      DepositSwitchTokenCreateCall();
  static LinkTokenCreateCall linkTokenCreateCall = LinkTokenCreateCall();
  static LinkTokenGetCall linkTokenGetCall = LinkTokenGetCall();
  static LinkOauthCorrelationIdExchangeCall linkOauthCorrelationIdExchangeCall =
      LinkOauthCorrelationIdExchangeCall();
  static DepositSwitchGetCall depositSwitchGetCall = DepositSwitchGetCall();
  static TransferGetCall transferGetCall = TransferGetCall();
  static TransferRecurringGetCall transferRecurringGetCall =
      TransferRecurringGetCall();
  static BankTransferGetCall bankTransferGetCall = BankTransferGetCall();
  static TransferAuthorizationCreateCall transferAuthorizationCreateCall =
      TransferAuthorizationCreateCall();
  static TransferBalanceGetCall transferBalanceGetCall =
      TransferBalanceGetCall();
  static TransferCapabilitiesGetCall transferCapabilitiesGetCall =
      TransferCapabilitiesGetCall();
  static TransferConfigurationGetCall transferConfigurationGetCall =
      TransferConfigurationGetCall();
  static TransferLedgerGetCall transferLedgerGetCall = TransferLedgerGetCall();
  static TransferLedgerDepositCall transferLedgerDepositCall =
      TransferLedgerDepositCall();
  static TransferLedgerWithdrawCall transferLedgerWithdrawCall =
      TransferLedgerWithdrawCall();
  static TransferOriginatorFundingAccountUpdateCall
      transferOriginatorFundingAccountUpdateCall =
      TransferOriginatorFundingAccountUpdateCall();
  static TransferMetricsGetCall transferMetricsGetCall =
      TransferMetricsGetCall();
  static TransferCreateCall transferCreateCall = TransferCreateCall();
  static TransferRecurringCreateCall transferRecurringCreateCall =
      TransferRecurringCreateCall();
  static BankTransferCreateCall bankTransferCreateCall =
      BankTransferCreateCall();
  static TransferListCall transferListCall = TransferListCall();
  static TransferRecurringListCall transferRecurringListCall =
      TransferRecurringListCall();
  static BankTransferListCall bankTransferListCall = BankTransferListCall();
  static TransferCancelCall transferCancelCall = TransferCancelCall();
  static TransferRecurringCancelCall transferRecurringCancelCall =
      TransferRecurringCancelCall();
  static BankTransferCancelCall bankTransferCancelCall =
      BankTransferCancelCall();
  static TransferEventListCall transferEventListCall = TransferEventListCall();
  static BankTransferEventListCall bankTransferEventListCall =
      BankTransferEventListCall();
  static TransferEventSyncCall transferEventSyncCall = TransferEventSyncCall();
  static BankTransferEventSyncCall bankTransferEventSyncCall =
      BankTransferEventSyncCall();
  static TransferSweepGetCall transferSweepGetCall = TransferSweepGetCall();
  static BankTransferSweepGetCall bankTransferSweepGetCall =
      BankTransferSweepGetCall();
  static TransferSweepListCall transferSweepListCall = TransferSweepListCall();
  static BankTransferSweepListCall bankTransferSweepListCall =
      BankTransferSweepListCall();
  static BankTransferBalanceGetCall bankTransferBalanceGetCall =
      BankTransferBalanceGetCall();
  static BankTransferMigrateAccountCall bankTransferMigrateAccountCall =
      BankTransferMigrateAccountCall();
  static TransferMigrateAccountCall transferMigrateAccountCall =
      TransferMigrateAccountCall();
  static TransferIntentCreateCall transferIntentCreateCall =
      TransferIntentCreateCall();
  static TransferIntentGetCall transferIntentGetCall = TransferIntentGetCall();
  static TransferRepaymentListCall transferRepaymentListCall =
      TransferRepaymentListCall();
  static TransferRepaymentReturnListCall transferRepaymentReturnListCall =
      TransferRepaymentReturnListCall();
  static TransferOriginatorCreateCall transferOriginatorCreateCall =
      TransferOriginatorCreateCall();
  static TransferQuestionnaireCreateCall transferQuestionnaireCreateCall =
      TransferQuestionnaireCreateCall();
  static TransferDiligenceSubmitCall transferDiligenceSubmitCall =
      TransferDiligenceSubmitCall();
  static TransferDiligenceDocumentUploadCall
      transferDiligenceDocumentUploadCall =
      TransferDiligenceDocumentUploadCall();
  static TransferOriginatorGetCall transferOriginatorGetCall =
      TransferOriginatorGetCall();
  static TransferOriginatorListCall transferOriginatorListCall =
      TransferOriginatorListCall();
  static TransferRefundCreateCall transferRefundCreateCall =
      TransferRefundCreateCall();
  static TransferRefundGetCall transferRefundGetCall = TransferRefundGetCall();
  static TransferRefundCancelCall transferRefundCancelCall =
      TransferRefundCancelCall();
  static SandboxBankTransferSimulateCall sandboxBankTransferSimulateCall =
      SandboxBankTransferSimulateCall();
  static SandboxTransferSweepSimulateCall sandboxTransferSweepSimulateCall =
      SandboxTransferSweepSimulateCall();
  static SandboxTransferSimulateCall sandboxTransferSimulateCall =
      SandboxTransferSimulateCall();
  static SandboxTransferRefundSimulateCall sandboxTransferRefundSimulateCall =
      SandboxTransferRefundSimulateCall();
  static SandboxTransferLedgerSimulateAvailableCall
      sandboxTransferLedgerSimulateAvailableCall =
      SandboxTransferLedgerSimulateAvailableCall();
  static SandboxTransferLedgerDepositSimulateCall
      sandboxTransferLedgerDepositSimulateCall =
      SandboxTransferLedgerDepositSimulateCall();
  static SandboxTransferLedgerWithdrawSimulateCall
      sandboxTransferLedgerWithdrawSimulateCall =
      SandboxTransferLedgerWithdrawSimulateCall();
  static SandboxTransferRepaymentSimulateCall
      sandboxTransferRepaymentSimulateCall =
      SandboxTransferRepaymentSimulateCall();
  static SandboxTransferFireWebhookCall sandboxTransferFireWebhookCall =
      SandboxTransferFireWebhookCall();
  static SandboxTransferTestClockCreateCall sandboxTransferTestClockCreateCall =
      SandboxTransferTestClockCreateCall();
  static SandboxTransferTestClockAdvanceCall
      sandboxTransferTestClockAdvanceCall =
      SandboxTransferTestClockAdvanceCall();
  static SandboxTransferTestClockGetCall sandboxTransferTestClockGetCall =
      SandboxTransferTestClockGetCall();
  static SandboxTransferTestClockListCall sandboxTransferTestClockListCall =
      SandboxTransferTestClockListCall();
  static SandboxPaymentProfileResetLoginCall
      sandboxPaymentProfileResetLoginCall =
      SandboxPaymentProfileResetLoginCall();
  static EmployersSearchCall employersSearchCall = EmployersSearchCall();
  static IncomeVerificationCreateCall incomeVerificationCreateCall =
      IncomeVerificationCreateCall();
  static IncomeVerificationPaystubsGetCall incomeVerificationPaystubsGetCall =
      IncomeVerificationPaystubsGetCall();
  static IncomeVerificationDocumentsDownloadCall
      incomeVerificationDocumentsDownloadCall =
      IncomeVerificationDocumentsDownloadCall();
  static IncomeVerificationTaxformsGetCall incomeVerificationTaxformsGetCall =
      IncomeVerificationTaxformsGetCall();
  static IncomeVerificationPrecheckCall incomeVerificationPrecheckCall =
      IncomeVerificationPrecheckCall();
  static EmploymentVerificationGetCall employmentVerificationGetCall =
      EmploymentVerificationGetCall();
  static DepositSwitchAltCreateCall depositSwitchAltCreateCall =
      DepositSwitchAltCreateCall();
  static CreditAuditCopyTokenCreateCall creditAuditCopyTokenCreateCall =
      CreditAuditCopyTokenCreateCall();
  static CreditReportAuditCopyRemoveCall creditReportAuditCopyRemoveCall =
      CreditReportAuditCopyRemoveCall();
  static CreditAssetReportFreddieMacGetCall creditAssetReportFreddieMacGetCall =
      CreditAssetReportFreddieMacGetCall();
  static CreditFreddieMacReportsGetCall creditFreddieMacReportsGetCall =
      CreditFreddieMacReportsGetCall();
  static CreditBankEmploymentGetCall creditBankEmploymentGetCall =
      CreditBankEmploymentGetCall();
  static CreditBankIncomeGetCall creditBankIncomeGetCall =
      CreditBankIncomeGetCall();
  static CreditBankIncomePdfGetCall creditBankIncomePdfGetCall =
      CreditBankIncomePdfGetCall();
  static CreditBankIncomeRefreshCall creditBankIncomeRefreshCall =
      CreditBankIncomeRefreshCall();
  static CreditBankIncomeWebhookUpdateCall creditBankIncomeWebhookUpdateCall =
      CreditBankIncomeWebhookUpdateCall();
  static CreditPayrollIncomeParsingConfigUpdateCall
      creditPayrollIncomeParsingConfigUpdateCall =
      CreditPayrollIncomeParsingConfigUpdateCall();
  static CreditBankStatementsUploadsGetCall creditBankStatementsUploadsGetCall =
      CreditBankStatementsUploadsGetCall();
  static CreditPayrollIncomeGetCall creditPayrollIncomeGetCall =
      CreditPayrollIncomeGetCall();
  static CreditPayrollIncomeRiskSignalsGetCall
      creditPayrollIncomeRiskSignalsGetCall =
      CreditPayrollIncomeRiskSignalsGetCall();
  static CreditPayrollIncomePrecheckCall creditPayrollIncomePrecheckCall =
      CreditPayrollIncomePrecheckCall();
  static CreditEmploymentGetCall creditEmploymentGetCall =
      CreditEmploymentGetCall();
  static CreditPayrollIncomeRefreshCall creditPayrollIncomeRefreshCall =
      CreditPayrollIncomeRefreshCall();
  static CreditRelayCreateCall creditRelayCreateCall = CreditRelayCreateCall();
  static CreditRelayGetCall creditRelayGetCall = CreditRelayGetCall();
  static CreditRelayPdfGetCall creditRelayPdfGetCall = CreditRelayPdfGetCall();
  static CreditRelayRefreshCall creditRelayRefreshCall =
      CreditRelayRefreshCall();
  static CreditRelayRemoveCall creditRelayRemoveCall = CreditRelayRemoveCall();
  static SandboxBankTransferFireWebhookCall sandboxBankTransferFireWebhookCall =
      SandboxBankTransferFireWebhookCall();
  static SandboxIncomeFireWebhookCall sandboxIncomeFireWebhookCall =
      SandboxIncomeFireWebhookCall();
  static SandboxBankIncomeFireWebhookCall sandboxBankIncomeFireWebhookCall =
      SandboxBankIncomeFireWebhookCall();
  static SandboxOauthSelectAccountsCall sandboxOauthSelectAccountsCall =
      SandboxOauthSelectAccountsCall();
  static SignalEvaluateCall signalEvaluateCall = SignalEvaluateCall();
  static SignalDecisionReportCall signalDecisionReportCall =
      SignalDecisionReportCall();
  static SignalReturnReportCall signalReturnReportCall =
      SignalReturnReportCall();
  static SignalPrepareCall signalPrepareCall = SignalPrepareCall();
  static WalletCreateCall walletCreateCall = WalletCreateCall();
  static WalletGetCall walletGetCall = WalletGetCall();
  static WalletListCall walletListCall = WalletListCall();
  static WalletTransactionExecuteCall walletTransactionExecuteCall =
      WalletTransactionExecuteCall();
  static WalletTransactionGetCall walletTransactionGetCall =
      WalletTransactionGetCall();
  static WalletTransactionListCall walletTransactionListCall =
      WalletTransactionListCall();
  static TransactionsEnhanceCall transactionsEnhanceCall =
      TransactionsEnhanceCall();
  static TransactionsRulesCreateCall transactionsRulesCreateCall =
      TransactionsRulesCreateCall();
  static TransactionsRulesListCall transactionsRulesListCall =
      TransactionsRulesListCall();
  static TransactionsRulesRemoveCall transactionsRulesRemoveCall =
      TransactionsRulesRemoveCall();
  static TransactionsUserInsightsGetCall transactionsUserInsightsGetCall =
      TransactionsUserInsightsGetCall();
  static PaymentProfileCreateCall paymentProfileCreateCall =
      PaymentProfileCreateCall();
  static PaymentProfileGetCall paymentProfileGetCall = PaymentProfileGetCall();
  static PaymentProfileRemoveCall paymentProfileRemoveCall =
      PaymentProfileRemoveCall();
  static PartnerCustomerCreateCall partnerCustomerCreateCall =
      PartnerCustomerCreateCall();
  static PartnerCustomerGetCall partnerCustomerGetCall =
      PartnerCustomerGetCall();
  static PartnerCustomerEnableCall partnerCustomerEnableCall =
      PartnerCustomerEnableCall();
  static PartnerCustomerRemoveCall partnerCustomerRemoveCall =
      PartnerCustomerRemoveCall();
  static PartnerCustomerOauthInstitutionsGetCall
      partnerCustomerOauthInstitutionsGetCall =
      PartnerCustomerOauthInstitutionsGetCall();
  static LinkDeliveryCreateCall linkDeliveryCreateCall =
      LinkDeliveryCreateCall();
  static LinkDeliveryGetCall linkDeliveryGetCall = LinkDeliveryGetCall();
  static FdxNotificationsCall fdxNotificationsCall = FdxNotificationsCall();
}

class AssetReportCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_tokens": [
    ""
  ],
  "days_requested": 0,
  "options": {
    "client_report_id": "",
    "webhook": "",
    "include_fast_report": false,
    "products": [
      ""
    ],
    "add_ons": [
      "investments"
    ],
    "user": {
      "client_user_id": "",
      "first_name": "",
      "middle_name": "",
      "last_name": "",
      "ssn": "",
      "phone_number": "",
      "email": ""
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'assetReportCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/asset_report/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AssetReportGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "asset_report_token": "",
  "user_token": "",
  "include_insights": false,
  "fast_report": false,
  "options": {
    "days_to_include": 0
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'assetReportGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/asset_report/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AssetReportPdfGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "asset_report_token": "",
  "options": {
    "days_to_include": 0
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'assetReportPdfGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/asset_report/pdf/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AssetReportRefreshCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "asset_report_token": "",
  "days_requested": 0,
  "options": {
    "client_report_id": "",
    "webhook": "",
    "user": {
      "client_user_id": "",
      "first_name": "",
      "middle_name": "",
      "last_name": "",
      "ssn": "",
      "phone_number": "",
      "email": ""
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'assetReportRefresh',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/asset_report/refresh',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AssetReportFilterCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "asset_report_token": "",
  "account_ids_to_exclude": [
    ""
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'assetReportFilter',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/asset_report/filter',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AssetReportRemoveCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "asset_report_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'assetReportRemove',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/asset_report/remove',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AssetReportAuditCopyCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "asset_report_token": "",
  "auditor_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'assetReportAuditCopyCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/asset_report/audit_copy/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AssetReportAuditCopyGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "audit_copy_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'assetReportAuditCopyGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/asset_report/audit_copy/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AssetReportAuditCopyRemoveCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "audit_copy_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'assetReportAuditCopyRemove',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/asset_report/audit_copy/remove',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BaseReportGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "user_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'baseReportGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/cra/base_report/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditAuditCopyTokenUpdateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "audit_copy_token": "",
  "report_tokens": [
    ""
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditAuditCopyTokenUpdate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/credit/audit_copy_token/update',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CraBankIncomeGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "user_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'craBankIncomeGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/cra/bank_income/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class StatementsListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "access_token": "",
  "client_id": "",
  "secret": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'statementsList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/statements/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class StatementsDownloadCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "access_token": "",
  "client_id": "",
  "secret": "",
  "statement_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'statementsDownload',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/statements/download',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ItemActivityListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": "",
  "cursor": "",
  "count": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'itemActivityList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/item/activity/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ItemApplicationListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'itemApplicationList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/item/application/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ItemApplicationScopesUpdateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": "",
  "application_id": "",
  "scopes": {
    "product_access": {
      "statements": false,
      "identity": false,
      "auth": false,
      "transactions": false,
      "accounts_details_transactions": false,
      "accounts_routing_number": false,
      "accounts_statements": false,
      "accounts_tax_statements": false,
      "customers_profiles": false
    },
    "accounts": [
      {
        "unique_id": "",
        "authorized": false,
        "account_product_access": ""
      }
    ],
    "new_accounts": false
  },
  "state": "",
  "context": "ENROLLMENT"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'itemApplicationScopesUpdate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/item/application/scopes/update',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApplicationGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "application_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'applicationGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/application/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ItemGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'itemGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/item/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AuthGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": "",
  "options": {
    "account_ids": [
      ""
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'authGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/auth/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransactionsGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "options": {
    "account_ids": [
      ""
    ],
    "count": 0,
    "offset": 0,
    "include_original_description": false,
    "include_personal_finance_category_beta": false,
    "include_personal_finance_category": false,
    "include_logo_and_counterparty_beta": false
  },
  "access_token": "",
  "secret": "",
  "start_date": "",
  "end_date": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transactionsGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transactions/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransactionsRefreshCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "access_token": "",
  "secret": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transactionsRefresh',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transactions/refresh',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransactionsRecurringGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "access_token": "",
  "secret": "",
  "options": {
    "include_personal_finance_category": false
  },
  "account_ids": [
    ""
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transactionsRecurringGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transactions/recurring/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransactionsSyncCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "access_token": "",
  "secret": "",
  "cursor": "",
  "count": 0,
  "options": {
    "include_original_description": false,
    "include_personal_finance_category": false,
    "include_logo_and_counterparty_beta": false
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transactionsSync',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transactions/sync',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransactionsEnrichCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "account_type": "",
  "transactions": [
    {
      "id": "",
      "client_user_id": "",
      "client_account_id": "",
      "account_type": "",
      "account_subtype": "",
      "description": "",
      "amount": 0,
      "direction": "INFLOW",
      "iso_currency_code": "",
      "location": {
        "country": "",
        "region": "",
        "city": "",
        "address": "",
        "postal_code": ""
      },
      "mcc": "",
      "date_posted": ""
    }
  ],
  "options": {
    "include_legacy_category": false
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transactionsEnrich',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transactions/enrich',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class InstitutionsGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "count": 0,
  "offset": 0,
  "country_codes": [
    "US"
  ],
  "options": {
    "products": [
      "assets"
    ],
    "routing_numbers": [
      ""
    ],
    "oauth": false,
    "include_optional_metadata": false,
    "include_auth_metadata": false,
    "include_payment_initiation_metadata": false
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'institutionsGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/institutions/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class InstitutionsSearchCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "query": "",
  "products": [
    "assets"
  ],
  "country_codes": [
    "US"
  ],
  "options": {
    "oauth": false,
    "include_optional_metadata": false,
    "include_auth_metadata": false,
    "include_payment_initiation_metadata": false,
    "payment_initiation": {
      "payment_id": "",
      "consent_id": ""
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'institutionsSearch',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/institutions/search',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class InstitutionsGetByIdCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "institution_id": "",
  "country_codes": [
    "US"
  ],
  "options": {
    "include_optional_metadata": false,
    "include_status": false,
    "include_auth_metadata": false,
    "include_payment_initiation_metadata": false
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'institutionsGetById',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/institutions/get_by_id',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ItemRemoveCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'itemRemove',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/item/remove',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AccountsGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": "",
  "options": {
    "account_ids": [
      ""
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'accountsGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/accounts/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CategoriesGetCall {
  Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'categoriesGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/categories/get',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxProcessorTokenCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "institution_id": "",
  "options": {
    "override_username": "",
    "override_password": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxProcessorTokenCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/sandbox/processor_token/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxPublicTokenCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "institution_id": "",
  "initial_products": [
    "assets"
  ],
  "options": {
    "webhook": "",
    "override_username": "",
    "override_password": "",
    "transactions": {
      "start_date": "",
      "end_date": ""
    },
    "income_verification": {
      "income_source_types": [
        "bank"
      ],
      "bank_income": {
        "days_requested": 0
      }
    }
  },
  "user_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxPublicTokenCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/sandbox/public_token/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxItemFireWebhookCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": "",
  "webhook_type": "AUTH",
  "webhook_code": "DEFAULT_UPDATE"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxItemFireWebhook',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/sandbox/item/fire_webhook',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AccountsBalanceGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "access_token": "",
  "secret": "",
  "client_id": "",
  "options": {
    "account_ids": [
      ""
    ],
    "min_last_updated_datetime": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'accountsBalanceGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/accounts/balance/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class IdentityGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": "",
  "options": {
    "account_ids": [
      ""
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'identityGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/identity/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class IdentityMatchCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": "",
  "user": {
    "legal_name": "",
    "phone_number": "",
    "email_address": "",
    "address": ""
  },
  "options": {
    "account_ids": [
      ""
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'identityMatch',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/identity/match',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class IdentityRefreshCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "access_token": "",
  "secret": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'identityRefresh',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/identity/refresh',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DashboardUserGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "dashboard_user_id": "54350110fedcbaf01234ffee",
  "secret": "",
  "client_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'dashboardUserGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/dashboard_user/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DashboardUserListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "secret": "",
  "client_id": "",
  "cursor": "eyJkaXJlY3Rpb24iOiJuZXh0Iiwib2Zmc2V0IjoiMTU5NDM"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'dashboardUserList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/dashboard_user/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class IdentityVerificationCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_user_id": "your-db-id-3b24110",
  "is_shareable": true,
  "template_id": "idvtmp_4FrXJvfQU3zGUR",
  "gave_consent": true,
  "user": {
    "email_address": "user@example.com",
    "phone_number": "+19876543212",
    "date_of_birth": "1990-05-29",
    "name": {
      "given_name": "Leslie",
      "family_name": "Knope"
    },
    "address": {
      "street": "123 Main St.",
      "street2": "Unit 42",
      "city": "Pawnee",
      "region": "IN",
      "postal_code": "46001",
      "country": "US"
    },
    "id_number": {
      "value": "123456789",
      "type": "us_ssn"
    },
    "client_user_id": "your-db-id-3b24110"
  },
  "client_id": "",
  "secret": "",
  "is_idempotent": true
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'identityVerificationCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/identity_verification/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class IdentityVerificationGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "identity_verification_id": "idv_52xR9LKo77r1Np",
  "secret": "",
  "client_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'identityVerificationGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/identity_verification/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class IdentityVerificationListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "secret": "",
  "client_id": "",
  "template_id": "idvtmp_4FrXJvfQU3zGUR",
  "client_user_id": "your-db-id-3b24110",
  "cursor": "eyJkaXJlY3Rpb24iOiJuZXh0Iiwib2Zmc2V0IjoiMTU5NDM"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'identityVerificationList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/identity_verification/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class IdentityVerificationRetryCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_user_id": "your-db-id-3b24110",
  "template_id": "idvtmp_4FrXJvfQU3zGUR",
  "strategy": "reset",
  "user": {
    "email_address": "user@example.com",
    "phone_number": "+19876543212",
    "date_of_birth": "1990-05-29",
    "name": {
      "given_name": "Leslie",
      "family_name": "Knope"
    },
    "address": {
      "street": "123 Main St.",
      "street2": "Unit 42",
      "city": "Pawnee",
      "region": "IN",
      "postal_code": "46001",
      "country": "US"
    },
    "id_number": {
      "value": "123456789",
      "type": "us_ssn"
    }
  },
  "steps": {
    "verify_sms": false,
    "kyc_check": false,
    "documentary_verification": false,
    "selfie_check": false
  },
  "client_id": "",
  "secret": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'identityVerificationRetry',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/identity_verification/retry',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WatchlistScreeningEntityCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "search_terms": {
    "entity_watchlist_program_id": "entprg_2eRPsDnL66rZ7H",
    "legal_name": "Al-Qaida",
    "document_number": "C31195855",
    "email_address": "user@example.com",
    "country": "US",
    "phone_number": "+14025671234",
    "url": "https://example.com"
  },
  "client_user_id": "your-db-id-3b24110",
  "client_id": "",
  "secret": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'watchlistScreeningEntityCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/watchlist_screening/entity/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WatchlistScreeningEntityGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "entity_watchlist_screening_id": "entscr_52xR9LKo77r1Np",
  "secret": "",
  "client_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'watchlistScreeningEntityGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/watchlist_screening/entity/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WatchlistScreeningEntityHistoryListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "secret": "",
  "client_id": "",
  "entity_watchlist_screening_id": "entscr_52xR9LKo77r1Np",
  "cursor": "eyJkaXJlY3Rpb24iOiJuZXh0Iiwib2Zmc2V0IjoiMTU5NDM"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'watchlistScreeningEntityHistoryList',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/watchlist_screening/entity/history/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WatchlistScreeningEntityHitListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "secret": "",
  "client_id": "",
  "entity_watchlist_screening_id": "entscr_52xR9LKo77r1Np",
  "cursor": "eyJkaXJlY3Rpb24iOiJuZXh0Iiwib2Zmc2V0IjoiMTU5NDM"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'watchlistScreeningEntityHitList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/watchlist_screening/entity/hit/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WatchlistScreeningEntityListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "secret": "",
  "client_id": "",
  "entity_watchlist_program_id": "entprg_2eRPsDnL66rZ7H",
  "client_user_id": "your-db-id-3b24110",
  "status": "cleared",
  "assignee": "54350110fedcbaf01234ffee",
  "cursor": "eyJkaXJlY3Rpb24iOiJuZXh0Iiwib2Zmc2V0IjoiMTU5NDM"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'watchlistScreeningEntityList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/watchlist_screening/entity/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WatchlistScreeningEntityProgramGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "entity_watchlist_program_id": "entprg_2eRPsDnL66rZ7H",
  "secret": "",
  "client_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'watchlistScreeningEntityProgramGet',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/watchlist_screening/entity/program/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WatchlistScreeningEntityProgramListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "secret": "",
  "client_id": "",
  "cursor": "eyJkaXJlY3Rpb24iOiJuZXh0Iiwib2Zmc2V0IjoiMTU5NDM"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'watchlistScreeningEntityProgramList',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/watchlist_screening/entity/program/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WatchlistScreeningEntityReviewCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "confirmed_hits": [
    "enthit_52xR9LKo77r1Np"
  ],
  "dismissed_hits": [
    "enthit_52xR9LKo77r1Np"
  ],
  "comment": "These look like legitimate matches, rejecting the customer.",
  "client_id": "",
  "secret": "",
  "entity_watchlist_screening_id": "entscr_52xR9LKo77r1Np"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'watchlistScreeningEntityReviewCreate',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/watchlist_screening/entity/review/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WatchlistScreeningEntityReviewListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "secret": "",
  "client_id": "",
  "entity_watchlist_screening_id": "entscr_52xR9LKo77r1Np",
  "cursor": "eyJkaXJlY3Rpb24iOiJuZXh0Iiwib2Zmc2V0IjoiMTU5NDM"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'watchlistScreeningEntityReviewList',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/watchlist_screening/entity/review/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WatchlistScreeningEntityUpdateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "entity_watchlist_screening_id": "entscr_52xR9LKo77r1Np",
  "search_terms": {
    "entity_watchlist_program_id": "entprg_2eRPsDnL66rZ7H",
    "legal_name": "Al-Qaida",
    "document_number": "C31195855",
    "email_address": "user@example.com",
    "country": "US",
    "phone_number": "+14025671234",
    "url": "https://example.com"
  },
  "assignee": "54350110fedcbaf01234ffee",
  "status": "cleared",
  "client_user_id": "your-db-id-3b24110",
  "client_id": "",
  "secret": "",
  "reset_fields": [
    "assignee"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'watchlistScreeningEntityUpdate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/watchlist_screening/entity/update',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WatchlistScreeningIndividualCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "search_terms": {
    "watchlist_program_id": "prg_2eRPsDnL66rZ7H",
    "legal_name": "Aleksey Potemkin",
    "date_of_birth": "1990-05-29",
    "document_number": "C31195855",
    "country": "US"
  },
  "client_user_id": "your-db-id-3b24110",
  "client_id": "",
  "secret": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'watchlistScreeningIndividualCreate',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/watchlist_screening/individual/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WatchlistScreeningIndividualGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "watchlist_screening_id": "scr_52xR9LKo77r1Np",
  "secret": "",
  "client_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'watchlistScreeningIndividualGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/watchlist_screening/individual/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WatchlistScreeningIndividualHistoryListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "secret": "",
  "client_id": "",
  "watchlist_screening_id": "scr_52xR9LKo77r1Np",
  "cursor": "eyJkaXJlY3Rpb24iOiJuZXh0Iiwib2Zmc2V0IjoiMTU5NDM"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'watchlistScreeningIndividualHistoryList',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/watchlist_screening/individual/history/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WatchlistScreeningIndividualHitListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "secret": "",
  "client_id": "",
  "watchlist_screening_id": "scr_52xR9LKo77r1Np",
  "cursor": "eyJkaXJlY3Rpb24iOiJuZXh0Iiwib2Zmc2V0IjoiMTU5NDM"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'watchlistScreeningIndividualHitList',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/watchlist_screening/individual/hit/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WatchlistScreeningIndividualListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "secret": "",
  "client_id": "",
  "watchlist_program_id": "prg_2eRPsDnL66rZ7H",
  "client_user_id": "your-db-id-3b24110",
  "status": "cleared",
  "assignee": "54350110fedcbaf01234ffee",
  "cursor": "eyJkaXJlY3Rpb24iOiJuZXh0Iiwib2Zmc2V0IjoiMTU5NDM"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'watchlistScreeningIndividualList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/watchlist_screening/individual/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WatchlistScreeningIndividualProgramGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "watchlist_program_id": "prg_2eRPsDnL66rZ7H",
  "secret": "",
  "client_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'watchlistScreeningIndividualProgramGet',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/watchlist_screening/individual/program/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WatchlistScreeningIndividualProgramListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "secret": "",
  "client_id": "",
  "cursor": "eyJkaXJlY3Rpb24iOiJuZXh0Iiwib2Zmc2V0IjoiMTU5NDM"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'watchlistScreeningIndividualProgramList',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/watchlist_screening/individual/program/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WatchlistScreeningIndividualReviewCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "confirmed_hits": [
    "scrhit_52xR9LKo77r1Np"
  ],
  "dismissed_hits": [
    "scrhit_52xR9LKo77r1Np"
  ],
  "comment": "These look like legitimate matches, rejecting the customer.",
  "client_id": "",
  "secret": "",
  "watchlist_screening_id": "scr_52xR9LKo77r1Np"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'watchlistScreeningIndividualReviewCreate',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/watchlist_screening/individual/review/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WatchlistScreeningIndividualReviewListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "secret": "",
  "client_id": "",
  "watchlist_screening_id": "scr_52xR9LKo77r1Np",
  "cursor": "eyJkaXJlY3Rpb24iOiJuZXh0Iiwib2Zmc2V0IjoiMTU5NDM"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'watchlistScreeningIndividualReviewList',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/watchlist_screening/individual/review/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WatchlistScreeningIndividualUpdateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "watchlist_screening_id": "scr_52xR9LKo77r1Np",
  "search_terms": {
    "watchlist_program_id": "prg_2eRPsDnL66rZ7H",
    "legal_name": "Aleksey Potemkin",
    "date_of_birth": "1990-05-29",
    "document_number": "C31195855",
    "country": "US"
  },
  "assignee": "54350110fedcbaf01234ffee",
  "status": "cleared",
  "client_user_id": "your-db-id-3b24110",
  "client_id": "",
  "secret": "",
  "reset_fields": [
    "assignee"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'watchlistScreeningIndividualUpdate',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/watchlist_screening/individual/update',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BeaconUserCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "program_id": "becprg_11111111111111",
  "client_user_id": "your-db-id-3b24110",
  "user": {
    "date_of_birth": "1990-05-29",
    "name": {
      "given_name": "Leslie",
      "family_name": "Knope"
    },
    "address": {
      "street": "123 Main St.",
      "street2": "Unit 42",
      "city": "Pawnee",
      "region": "IN",
      "postal_code": "46001",
      "country": "US"
    },
    "email_address": "user@example.com",
    "phone_number": "+19876543212",
    "id_number": {
      "value": "123456789",
      "type": "us_ssn"
    },
    "ip_address": "192.0.2.42"
  },
  "report": {
    "type": "first_party",
    "fraud_date": "1990-05-29",
    "fraud_amount": {
      "iso_currency_code": "USD",
      "value": 100
    }
  },
  "client_id": "",
  "secret": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'beaconUserCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/beacon/user/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BeaconUserGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "beacon_user_id": "becusr_11111111111111",
  "client_id": "",
  "secret": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'beaconUserGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/beacon/user/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BeaconReportCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "beacon_user_id": "becusr_11111111111111",
  "type": "first_party",
  "fraud_date": "1990-05-29",
  "fraud_amount": {
    "iso_currency_code": "USD",
    "value": 100
  },
  "client_id": "",
  "secret": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'beaconReportCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/beacon/report/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BeaconReportListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "beacon_user_id": "becusr_11111111111111",
  "cursor": "eyJkaXJlY3Rpb24iOiJuZXh0Iiwib2Zmc2V0IjoiMTU5NDM",
  "client_id": "",
  "secret": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'beaconReportList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/beacon/report/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BeaconReportSyndicationListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "beacon_user_id": "becusr_11111111111111",
  "cursor": "eyJkaXJlY3Rpb24iOiJuZXh0Iiwib2Zmc2V0IjoiMTU5NDM",
  "client_id": "",
  "secret": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'beaconReportSyndicationList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/beacon/report_syndication/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcessorAuthGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "processor_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'processorAuthGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/processor/auth/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcessorAccountGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "processor_token": "",
  "secret": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'processorAccountGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/processor/account/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcessorTransactionsGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "options": {
    "account_ids": [
      ""
    ],
    "count": 0,
    "offset": 0,
    "include_original_description": false,
    "include_personal_finance_category_beta": false,
    "include_personal_finance_category": false,
    "include_logo_and_counterparty_beta": false
  },
  "processor_token": "",
  "secret": "",
  "start_date": "",
  "end_date": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'processorTransactionsGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/processor/transactions/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcessorTransactionsSyncCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "processor_token": "",
  "secret": "",
  "cursor": "",
  "count": 0,
  "options": {
    "include_original_description": false,
    "include_personal_finance_category": false,
    "include_logo_and_counterparty_beta": false
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'processorTransactionsSync',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/processor/transactions/sync',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcessorTransactionsRefreshCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "processor_token": "",
  "secret": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'processorTransactionsRefresh',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/processor/transactions/refresh',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcessorTransactionsRecurringGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "processor_token": "",
  "secret": "",
  "options": {
    "include_personal_finance_category": false
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'processorTransactionsRecurringGet',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/processor/transactions/recurring/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcessorSignalEvaluateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "processor_token": "",
  "client_transaction_id": "",
  "amount": 0,
  "user_present": false,
  "client_user_id": "",
  "is_recurring": false,
  "default_payment_method": "",
  "user": {
    "name": {
      "prefix": "",
      "given_name": "",
      "middle_name": "",
      "family_name": "",
      "suffix": ""
    },
    "phone_number": "",
    "email_address": "",
    "address": {
      "city": "",
      "region": "",
      "street": "",
      "postal_code": "",
      "country": ""
    }
  },
  "device": {
    "ip_address": "",
    "user_agent": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'processorSignalEvaluate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/processor/signal/evaluate',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcessorSignalDecisionReportCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "processor_token": "",
  "client_transaction_id": "",
  "initiated": false,
  "days_funds_on_hold": 0,
  "decision_outcome": "APPROVE",
  "payment_method": "SAME_DAY_ACH",
  "amount_instantly_available": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'processorSignalDecisionReport',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/processor/signal/decision/report',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcessorSignalReturnReportCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "processor_token": "",
  "client_transaction_id": "",
  "return_code": "",
  "returned_at": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'processorSignalReturnReport',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/processor/signal/return/report',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcessorBankTransferCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "idempotency_key": "",
  "processor_token": "",
  "type": "debit",
  "network": "ach",
  "amount": "",
  "iso_currency_code": "",
  "description": "",
  "ach_class": "ccd",
  "user": {
    "legal_name": "",
    "email_address": "",
    "routing_number": ""
  },
  "custom_tag": "",
  "metadata": {},
  "origination_account_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'processorBankTransferCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/processor/bank_transfer/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcessorIdentityGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "processor_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'processorIdentityGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/processor/identity/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcessorIdentityMatchCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "processor_token": "",
  "user": {
    "legal_name": "",
    "phone_number": "",
    "email_address": "",
    "address": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'processorIdentityMatch',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/processor/identity/match',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcessorBalanceGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "processor_token": "",
  "options": {
    "min_last_updated_datetime": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'processorBalanceGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/processor/balance/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ItemWebhookUpdateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": "",
  "webhook": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'itemWebhookUpdate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/item/webhook/update',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ItemAccessTokenInvalidateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'itemAccessTokenInvalidate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/item/access_token/invalidate',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WebhookVerificationKeyGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "key_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'webhookVerificationKeyGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/webhook_verification_key/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LiabilitiesGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": "",
  "options": {
    "account_ids": [
      ""
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'liabilitiesGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/liabilities/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PaymentInitiationRecipientCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "name": "",
  "iban": "",
  "bacs": "",
  "address": {
    "street": [
      ""
    ],
    "city": "",
    "postal_code": "",
    "country": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'paymentInitiationRecipientCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/payment_initiation/recipient/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PaymentInitiationPaymentReverseCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "payment_id": "",
  "idempotency_key": "",
  "reference": "",
  "amount": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'paymentInitiationPaymentReverse',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/payment_initiation/payment/reverse',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PaymentInitiationRecipientGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "recipient_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'paymentInitiationRecipientGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/payment_initiation/recipient/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PaymentInitiationRecipientListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'paymentInitiationRecipientList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/payment_initiation/recipient/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PaymentInitiationPaymentCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "recipient_id": "",
  "reference": "",
  "amount": {
    "currency": "GBP",
    "value": 0
  },
  "schedule": "",
  "options": {
    "request_refund_details": false,
    "iban": "",
    "bacs": "",
    "scheme": null
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'paymentInitiationPaymentCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/payment_initiation/payment/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreatePaymentTokenCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "payment_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createPaymentToken',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/payment_initiation/payment/token/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PaymentInitiationConsentCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "recipient_id": "",
  "reference": "",
  "scopes": [
    "ME_TO_ME"
  ],
  "constraints": {
    "valid_date_time": {
      "from": "",
      "to": ""
    },
    "max_payment_amount": "",
    "periodic_amounts": [
      {
        "amount": "",
        "interval": "DAY",
        "alignment": "CALENDAR"
      }
    ]
  },
  "options": {
    "request_refund_details": false,
    "iban": "",
    "bacs": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'paymentInitiationConsentCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/payment_initiation/consent/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PaymentInitiationConsentGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "consent_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'paymentInitiationConsentGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/payment_initiation/consent/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PaymentInitiationConsentRevokeCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "consent_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'paymentInitiationConsentRevoke',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/payment_initiation/consent/revoke',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PaymentInitiationConsentPaymentExecuteCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "consent_id": "",
  "amount": {
    "currency": "GBP",
    "value": 0
  },
  "idempotency_key": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'paymentInitiationConsentPaymentExecute',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/payment_initiation/consent/payment/execute',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxItemResetLoginCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxItemResetLogin',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/sandbox/item/reset_login',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxItemSetVerificationStatusCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": "",
  "account_id": "",
  "verification_status": "automatically_verified"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxItemSetVerificationStatus',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/sandbox/item/set_verification_status',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ItemPublicTokenExchangeCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "public_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'itemPublicTokenExchange',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/item/public_token/exchange',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ItemCreatePublicTokenCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'itemCreatePublicToken',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/item/public_token/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UserCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "client_user_id": "",
  "consumer_report_user_identity": {
    "first_name": "",
    "last_name": "",
    "phone_numbers": [
      ""
    ],
    "emails": [
      ""
    ],
    "primary_address": {
      "city": "",
      "region": "",
      "street": "",
      "postal_code": "",
      "country": ""
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'userCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/user/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UserUpdateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "user_token": "",
  "consumer_report_user_identity": {
    "first_name": "",
    "last_name": "",
    "phone_numbers": [
      ""
    ],
    "emails": [
      ""
    ],
    "primary_address": {
      "city": "",
      "region": "",
      "street": "",
      "postal_code": "",
      "country": ""
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'userUpdate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/user/update',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditSessionsGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "user_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditSessionsGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/credit/sessions/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PaymentInitiationPaymentGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "payment_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'paymentInitiationPaymentGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/payment_initiation/payment/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PaymentInitiationPaymentListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "count": 0,
  "cursor": "",
  "consent_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'paymentInitiationPaymentList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/payment_initiation/payment/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class InvestmentsHoldingsGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": "",
  "options": {
    "account_ids": [
      ""
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'investmentsHoldingsGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/investments/holdings/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class InvestmentsTransactionsGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": "",
  "start_date": "",
  "end_date": "",
  "options": {
    "account_ids": [
      ""
    ],
    "count": 0,
    "offset": 0,
    "async_update": false
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'investmentsTransactionsGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/investments/transactions/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class InvestmentsRefreshCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "access_token": "",
  "secret": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'investmentsRefresh',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/investments/refresh',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class InvestmentsAuthGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": "",
  "options": {
    "account_ids": [
      ""
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'investmentsAuthGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/investments/auth/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcessorTokenCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": "",
  "account_id": "",
  "processor": "dwolla"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'processorTokenCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/processor/token/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcessorTokenPermissionsSetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "processor_token": "",
  "products": [
    "assets"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'processorTokenPermissionsSet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/processor/token/permissions/set',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcessorTokenPermissionsGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "processor_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'processorTokenPermissionsGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/processor/token/permissions/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcessorTokenWebhookUpdateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "processor_token": "",
  "webhook": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'processorTokenWebhookUpdate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/processor/token/webhook/update',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcessorStripeBankAccountTokenCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": "",
  "account_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'processorStripeBankAccountTokenCreate',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/processor/stripe/bank_account_token/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcessorApexProcessorTokenCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": "",
  "account_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'processorApexProcessorTokenCreate',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/processor/apex/processor_token/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DepositSwitchCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "target_access_token": "",
  "target_account_id": "",
  "country_code": "US",
  "options": {
    "webhook": "",
    "transaction_item_access_tokens": [
      ""
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'depositSwitchCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/deposit_switch/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ItemImportCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "products": [
    "assets"
  ],
  "user_auth": {
    "user_id": "",
    "auth_token": ""
  },
  "options": {
    "webhook": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'itemImport',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/item/import',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DepositSwitchTokenCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "deposit_switch_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'depositSwitchTokenCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/deposit_switch/token/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LinkTokenCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "client_name": "",
  "language": "",
  "country_codes": [
    "US"
  ],
  "user": {
    "client_user_id": "",
    "legal_name": "",
    "name": "",
    "phone_number": "",
    "phone_number_verified_time": "",
    "email_address": "",
    "email_address_verified_time": "",
    "ssn": "",
    "date_of_birth": "",
    "address": "",
    "id_number": ""
  },
  "products": [
    "assets"
  ],
  "required_if_supported_products": [
    "assets"
  ],
  "optional_products": [
    "assets"
  ],
  "additional_consented_products": [
    "assets"
  ],
  "webhook": "",
  "access_token": "",
  "link_customization_name": "",
  "redirect_uri": "",
  "android_package_name": "",
  "institution_data": {
    "routing_number": ""
  },
  "account_filters": {
    "depository": {
      "account_subtypes": [
        "checking"
      ]
    },
    "credit": {
      "account_subtypes": [
        "credit card"
      ]
    },
    "loan": {
      "account_subtypes": [
        "auto"
      ]
    },
    "investment": {
      "account_subtypes": [
        "529"
      ]
    }
  },
  "eu_config": {
    "headless": false
  },
  "institution_id": "",
  "payment_initiation": {
    "payment_id": "",
    "consent_id": ""
  },
  "deposit_switch": {
    "deposit_switch_id": ""
  },
  "employment": {
    "employment_source_types": [
      "bank"
    ],
    "bank_employment": {
      "days_requested": 0
    }
  },
  "income_verification": {
    "income_verification_id": "",
    "asset_report_id": "",
    "precheck_id": "",
    "access_tokens": [
      ""
    ],
    "income_source_types": [
      "bank"
    ],
    "bank_income": {
      "days_requested": 0,
      "enable_multiple_items": false
    },
    "payroll_income": {
      "flow_types": [
        "payroll_digital_income"
      ],
      "is_update_mode": false,
      "item_id_to_update": "",
      "parsing_config": [
        "ocr"
      ]
    },
    "stated_income_sources": [
      {
        "employer": "",
        "category": "OTHER",
        "pay_per_cycle": 0,
        "pay_annual": 0,
        "pay_type": "UNKNOWN",
        "pay_frequency": "UNKNOWN"
      }
    ]
  },
  "base_report": {
    "days_requested": 0
  },
  "consumer_report_permissible_purpose": "ACCOUNT_REVIEW_CREDIT",
  "auth": {
    "auth_type_select_enabled": false,
    "automated_microdeposits_enabled": false,
    "instant_match_enabled": false,
    "same_day_microdeposits_enabled": false,
    "reroute_to_credentials": "OFF",
    "flow_type": "FLEXIBLE_AUTH"
  },
  "transfer": {
    "intent_id": "",
    "payment_profile_token": ""
  },
  "update": {
    "account_selection_enabled": false
  },
  "identity_verification": {
    "template_id": "idvtmp_4FrXJvfQU3zGUR",
    "consent": "",
    "gave_consent": true
  },
  "statements": {
    "start_date": "",
    "end_date": ""
  },
  "user_token": "",
  "investments": {
    "allow_unverified_crypto_wallets": false,
    "allow_manual_entry": false
  },
  "investments_auth": {
    "manual_entry_enabled": false,
    "masked_number_match_enabled": false
  },
  "hosted_link": {
    "delivery_method": "sms",
    "completion_redirect_uri": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'linkTokenCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/link/token/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LinkTokenGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "link_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'linkTokenGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/link/token/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LinkOauthCorrelationIdExchangeCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "link_correlation_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'linkOauthCorrelationIdExchange',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/link/oauth/correlation_id/exchange',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DepositSwitchGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "deposit_switch_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'depositSwitchGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/deposit_switch/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "transfer_id": "",
  "originator_client_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferRecurringGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "recurring_transfer_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferRecurringGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/recurring/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BankTransferGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "bank_transfer_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'bankTransferGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/bank_transfer/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferAuthorizationCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": "",
  "account_id": "",
  "funding_account_id": "",
  "payment_profile_token": "",
  "type": "debit",
  "network": "ach",
  "amount": "",
  "ach_class": "ccd",
  "user": {
    "legal_name": "",
    "phone_number": "",
    "email_address": "",
    "address": {
      "street": "",
      "city": "",
      "region": "",
      "postal_code": "",
      "country": ""
    }
  },
  "device": {
    "ip_address": "",
    "user_agent": ""
  },
  "origination_account_id": "",
  "iso_currency_code": "",
  "idempotency_key": "",
  "user_present": false,
  "with_guarantee": false,
  "beacon_session_id": "",
  "originator_client_id": "",
  "credit_funds_source": "sweep",
  "test_clock_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferAuthorizationCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/authorization/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferBalanceGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "originator_client_id": "",
  "secret": "",
  "type": "prefunded_rtp_credits"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferBalanceGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/balance/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferCapabilitiesGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": "",
  "account_id": "",
  "payment_profile_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferCapabilitiesGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/capabilities/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferConfigurationGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "originator_client_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferConfigurationGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/configuration/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferLedgerGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "originator_client_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferLedgerGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/ledger/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferLedgerDepositCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "originator_client_id": "",
  "funding_account_id": "",
  "amount": "",
  "description": "",
  "idempotency_key": "",
  "network": "ach"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferLedgerDeposit',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/ledger/deposit',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferLedgerWithdrawCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "originator_client_id": "",
  "funding_account_id": "",
  "amount": "",
  "description": "",
  "idempotency_key": "",
  "network": "ach"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferLedgerWithdraw',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/ledger/withdraw',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferOriginatorFundingAccountUpdateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "originator_client_id": "",
  "funding_account": {
    "access_token": "",
    "account_id": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferOriginatorFundingAccountUpdate',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/transfer/originator/funding_account/update',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferMetricsGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "originator_client_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferMetricsGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/metrics/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "idempotency_key": "",
  "access_token": "",
  "account_id": "",
  "authorization_id": "",
  "type": "",
  "network": "",
  "amount": "",
  "description": "",
  "ach_class": "",
  "user": {
    "legal_name": "",
    "phone_number": "",
    "email_address": "",
    "address": {
      "street": "",
      "city": "",
      "region": "",
      "postal_code": "",
      "country": ""
    }
  },
  "metadata": {},
  "origination_account_id": "",
  "iso_currency_code": "",
  "test_clock_id": "",
  "facilitator_fee": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferRecurringCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": "",
  "idempotency_key": "",
  "account_id": "",
  "funding_account_id": "",
  "type": "debit",
  "network": "ach",
  "ach_class": "ccd",
  "amount": "",
  "user_present": false,
  "iso_currency_code": "",
  "description": "",
  "test_clock_id": "",
  "schedule": {
    "interval_unit": "week",
    "interval_count": 0,
    "interval_execution_day": 0,
    "start_date": "",
    "end_date": ""
  },
  "user": {
    "legal_name": "",
    "phone_number": "",
    "email_address": "",
    "address": {
      "street": "",
      "city": "",
      "region": "",
      "postal_code": "",
      "country": ""
    }
  },
  "device": {
    "ip_address": "",
    "user_agent": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferRecurringCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/recurring/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BankTransferCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "idempotency_key": "",
  "access_token": "",
  "account_id": "",
  "type": "debit",
  "network": "ach",
  "amount": "",
  "iso_currency_code": "",
  "description": "",
  "ach_class": "ccd",
  "user": {
    "legal_name": "",
    "email_address": "",
    "routing_number": ""
  },
  "custom_tag": "",
  "metadata": {},
  "origination_account_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'bankTransferCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/bank_transfer/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "start_date": "",
  "end_date": "",
  "count": 0,
  "offset": 0,
  "origination_account_id": "",
  "originator_client_id": "",
  "funding_account_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferRecurringListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "start_time": "",
  "end_time": "",
  "count": 0,
  "offset": 0,
  "funding_account_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferRecurringList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/recurring/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BankTransferListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "start_date": "",
  "end_date": "",
  "count": 0,
  "offset": 0,
  "origination_account_id": "",
  "direction": "outbound"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'bankTransferList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/bank_transfer/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferCancelCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "transfer_id": "",
  "originator_client_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferCancel',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/cancel',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferRecurringCancelCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "recurring_transfer_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferRecurringCancel',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/recurring/cancel',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BankTransferCancelCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "bank_transfer_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'bankTransferCancel',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/bank_transfer/cancel',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferEventListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "start_date": "",
  "end_date": "",
  "transfer_id": "",
  "account_id": "",
  "transfer_type": "debit",
  "event_types": [
    "pending"
  ],
  "sweep_id": "",
  "count": 0,
  "offset": 0,
  "origination_account_id": "",
  "originator_client_id": "",
  "funding_account_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferEventList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/event/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BankTransferEventListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "start_date": "",
  "end_date": "",
  "bank_transfer_id": "",
  "account_id": "",
  "bank_transfer_type": "debit",
  "event_types": [
    "pending"
  ],
  "count": 0,
  "offset": 0,
  "origination_account_id": "",
  "direction": "inbound"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'bankTransferEventList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/bank_transfer/event/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferEventSyncCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "after_id": 0,
  "count": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferEventSync',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/event/sync',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BankTransferEventSyncCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "after_id": 0,
  "count": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'bankTransferEventSync',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/bank_transfer/event/sync',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferSweepGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "sweep_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferSweepGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/sweep/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BankTransferSweepGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "sweep_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'bankTransferSweepGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/bank_transfer/sweep/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferSweepListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "start_date": "",
  "end_date": "",
  "count": 0,
  "offset": 0,
  "amount": "",
  "status": "pending",
  "originator_client_id": "",
  "funding_account_id": "",
  "transfer_id": "",
  "trigger": "manual"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferSweepList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/sweep/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BankTransferSweepListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "origination_account_id": "",
  "start_time": "",
  "end_time": "",
  "count": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'bankTransferSweepList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/bank_transfer/sweep/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BankTransferBalanceGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "origination_account_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'bankTransferBalanceGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/bank_transfer/balance/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BankTransferMigrateAccountCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "account_number": "",
  "routing_number": "",
  "wire_routing_number": "",
  "account_type": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'bankTransferMigrateAccount',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/bank_transfer/migrate_account',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferMigrateAccountCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "account_number": "",
  "routing_number": "",
  "wire_routing_number": "",
  "account_type": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferMigrateAccount',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/migrate_account',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferIntentCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "account_id": "",
  "funding_account_id": "",
  "mode": "PAYMENT",
  "network": "ach",
  "amount": "",
  "description": "",
  "ach_class": "ccd",
  "origination_account_id": "",
  "user": {
    "legal_name": "",
    "phone_number": "",
    "email_address": "",
    "address": {
      "street": "",
      "city": "",
      "region": "",
      "postal_code": "",
      "country": ""
    }
  },
  "metadata": {},
  "iso_currency_code": "",
  "require_guarantee": false
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferIntentCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/intent/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferIntentGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "transfer_intent_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferIntentGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/intent/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferRepaymentListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "start_date": "",
  "end_date": "",
  "count": 0,
  "offset": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferRepaymentList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/repayment/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferRepaymentReturnListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "repayment_id": "",
  "count": 0,
  "offset": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferRepaymentReturnList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/repayment/return/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferOriginatorCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "company_name": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferOriginatorCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/originator/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferQuestionnaireCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "originator_client_id": "",
  "redirect_uri": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferQuestionnaireCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/questionnaire/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferDiligenceSubmitCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "originator_client_id": "",
  "originator_diligence": {
    "dba": "",
    "tax_id": "",
    "credit_usage_configuration": {
      "expected_frequency": "once_per_month",
      "expected_highest_amount": "",
      "expected_average_amount": "",
      "expected_monthly_amount": "",
      "sec_codes": [
        "ccd"
      ]
    },
    "debit_usage_configuration": {
      "expected_frequency": "once_per_month",
      "expected_highest_amount": "",
      "expected_average_amount": "",
      "expected_monthly_amount": "",
      "sec_codes": [
        "ccd"
      ]
    },
    "address": {
      "city": "",
      "street": "",
      "region": "",
      "postal_code": "",
      "country_code": ""
    },
    "website": "",
    "naics_code": "",
    "funding_account": {
      "access_token": "",
      "account_id": ""
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferDiligenceSubmit',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/diligence/submit',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferDiligenceDocumentUploadCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "originator_client_id": "",
  "file": "",
  "purpose": "DUE_DILIGENCE"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferDiligenceDocumentUpload',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/diligence/document/upload',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferOriginatorGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "originator_client_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferOriginatorGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/originator/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferOriginatorListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "count": 0,
  "offset": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferOriginatorList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/originator/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferRefundCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "transfer_id": "",
  "amount": "",
  "idempotency_key": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferRefundCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/refund/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferRefundGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "refund_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferRefundGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/refund/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferRefundCancelCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "refund_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transferRefundCancel',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/transfer/refund/cancel',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxBankTransferSimulateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "bank_transfer_id": "",
  "event_type": "",
  "failure_reason": {
    "ach_return_code": "",
    "description": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxBankTransferSimulate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/sandbox/bank_transfer/simulate',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxTransferSweepSimulateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "test_clock_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxTransferSweepSimulate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/sandbox/transfer/sweep/simulate',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxTransferSimulateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "transfer_id": "",
  "test_clock_id": "",
  "event_type": "",
  "failure_reason": {
    "ach_return_code": "",
    "description": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxTransferSimulate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/sandbox/transfer/simulate',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxTransferRefundSimulateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "refund_id": "",
  "test_clock_id": "",
  "event_type": "",
  "failure_reason": {
    "ach_return_code": "",
    "description": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxTransferRefundSimulate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/sandbox/transfer/refund/simulate',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxTransferLedgerSimulateAvailableCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "test_clock_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxTransferLedgerSimulateAvailable',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/sandbox/transfer/ledger/simulate_available',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxTransferLedgerDepositSimulateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "sweep_id": "",
  "event_type": "sweep.posted",
  "failure_reason": {
    "ach_return_code": "",
    "description": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxTransferLedgerDepositSimulate',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/sandbox/transfer/ledger/deposit/simulate',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxTransferLedgerWithdrawSimulateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "sweep_id": "",
  "event_type": "sweep.posted",
  "failure_reason": {
    "ach_return_code": "",
    "description": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxTransferLedgerWithdrawSimulate',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/sandbox/transfer/ledger/withdraw/simulate',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxTransferRepaymentSimulateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxTransferRepaymentSimulate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/sandbox/transfer/repayment/simulate',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxTransferFireWebhookCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "webhook": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxTransferFireWebhook',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/sandbox/transfer/fire_webhook',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxTransferTestClockCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "virtual_time": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxTransferTestClockCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/sandbox/transfer/test_clock/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxTransferTestClockAdvanceCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "test_clock_id": "",
  "new_virtual_time": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxTransferTestClockAdvance',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/sandbox/transfer/test_clock/advance',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxTransferTestClockGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "test_clock_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxTransferTestClockGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/sandbox/transfer/test_clock/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxTransferTestClockListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "start_virtual_time": "",
  "end_virtual_time": "",
  "count": 0,
  "offset": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxTransferTestClockList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/sandbox/transfer/test_clock/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxPaymentProfileResetLoginCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "payment_profile_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxPaymentProfileResetLogin',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/sandbox/payment_profile/reset_login',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class EmployersSearchCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "query": "",
  "products": [
    ""
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'employersSearch',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/employers/search',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class IncomeVerificationCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "webhook": "",
  "precheck_id": "",
  "options": {
    "access_tokens": [
      ""
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'incomeVerificationCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/income/verification/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class IncomeVerificationPaystubsGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "income_verification_id": "",
  "access_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'incomeVerificationPaystubsGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/income/verification/paystubs/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class IncomeVerificationDocumentsDownloadCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "income_verification_id": "",
  "access_token": "",
  "document_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'incomeVerificationDocumentsDownload',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/income/verification/documents/download',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class IncomeVerificationTaxformsGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "income_verification_id": "",
  "access_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'incomeVerificationTaxformsGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/income/verification/taxforms/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class IncomeVerificationPrecheckCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "user": {
    "first_name": "",
    "last_name": "",
    "email_address": "",
    "home_address": {
      "city": "",
      "region": "",
      "street": "",
      "postal_code": "",
      "country": ""
    }
  },
  "employer": {
    "name": "",
    "address": {},
    "tax_id": "",
    "url": ""
  },
  "payroll_institution": {
    "name": ""
  },
  "transactions_access_token": "",
  "transactions_access_tokens": [
    ""
  ],
  "us_military_info": {
    "is_active_duty": false,
    "branch": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'incomeVerificationPrecheck',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/income/verification/precheck',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class EmploymentVerificationGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'employmentVerificationGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/employment/verification/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DepositSwitchAltCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "target_account": {
    "account_number": "",
    "routing_number": "",
    "account_name": "",
    "account_subtype": "checking"
  },
  "target_user": {
    "given_name": "",
    "family_name": "",
    "phone": "",
    "email": "",
    "address": {
      "city": "",
      "region": "",
      "street": "",
      "postal_code": "",
      "country": ""
    },
    "tax_payer_id": ""
  },
  "options": {
    "webhook": "",
    "transaction_item_access_tokens": [
      ""
    ]
  },
  "country_code": "US"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'depositSwitchAltCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/deposit_switch/alt/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditAuditCopyTokenCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "report_tokens": [
    ""
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditAuditCopyTokenCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/credit/audit_copy_token/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditReportAuditCopyRemoveCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "audit_copy_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditReportAuditCopyRemove',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/credit/audit_copy_token/remove',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditAssetReportFreddieMacGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "audit_copy_token": "",
  "client_id": "",
  "secret": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditAssetReportFreddieMacGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/credit/asset_report/freddie_mac/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditFreddieMacReportsGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "audit_copy_token": "",
  "client_id": "",
  "secret": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditFreddieMacReportsGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/credit/freddie_mac/reports/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditBankEmploymentGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "user_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditBankEmploymentGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/beta/credit/v1/bank_employment/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditBankIncomeGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "user_token": "",
  "options": {
    "count": 0
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditBankIncomeGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/credit/bank_income/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditBankIncomePdfGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "user_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditBankIncomePdfGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/credit/bank_income/pdf/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditBankIncomeRefreshCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "user_token": "",
  "options": {
    "days_requested": 0
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditBankIncomeRefresh',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/credit/bank_income/refresh',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditBankIncomeWebhookUpdateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "user_token": "",
  "enable_webhooks": false
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditBankIncomeWebhookUpdate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/credit/bank_income/webhook/update',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditPayrollIncomeParsingConfigUpdateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "user_token": "",
  "item_id": "",
  "parsing_config": [
    "ocr"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditPayrollIncomeParsingConfigUpdate',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/credit/payroll_income/parsing_config/update',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditBankStatementsUploadsGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "user_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditBankStatementsUploadsGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/credit/bank_statements/uploads/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditPayrollIncomeGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "user_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditPayrollIncomeGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/credit/payroll_income/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditPayrollIncomeRiskSignalsGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "user_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditPayrollIncomeRiskSignalsGet',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/credit/payroll_income/risk_signals/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditPayrollIncomePrecheckCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "user_token": "",
  "access_tokens": [
    ""
  ],
  "employer": {
    "name": "",
    "address": {},
    "tax_id": "",
    "url": ""
  },
  "us_military_info": {
    "is_active_duty": false,
    "branch": ""
  },
  "payroll_institution": {
    "name": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditPayrollIncomePrecheck',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/credit/payroll_income/precheck',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditEmploymentGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "user_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditEmploymentGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/credit/employment/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditPayrollIncomeRefreshCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "user_token": "",
  "options": {
    "item_ids": [
      ""
    ],
    "webhook": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditPayrollIncomeRefresh',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/credit/payroll_income/refresh',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditRelayCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "report_tokens": [
    ""
  ],
  "secondary_client_id": "",
  "webhook": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditRelayCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/credit/relay/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditRelayGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "relay_token": "",
  "report_type": "asset"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditRelayGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/credit/relay/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditRelayPdfGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "relay_token": "",
  "report_type": "asset"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditRelayPdfGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/credit/relay/pdf/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditRelayRefreshCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "relay_token": "",
  "report_type": "asset",
  "webhook": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditRelayRefresh',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/credit/relay/refresh',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreditRelayRemoveCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "relay_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creditRelayRemove',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/credit/relay/remove',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxBankTransferFireWebhookCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "webhook": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxBankTransferFireWebhook',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/sandbox/bank_transfer/fire_webhook',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxIncomeFireWebhookCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "item_id": "",
  "user_id": "",
  "webhook": "",
  "verification_status": "VERIFICATION_STATUS_PROCESSING_COMPLETE"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxIncomeFireWebhook',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/sandbox/income/fire_webhook',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxBankIncomeFireWebhookCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "webhook_override": "",
  "webhook_code": "BANK_INCOME_REFRESH_UPDATE",
  "webhook_fields": {
    "user_id": "",
    "bank_income_refresh_complete_result": "SUCCESS"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxBankIncomeFireWebhook',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/sandbox/bank_income/fire_webhook',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SandboxOauthSelectAccountsCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "oauth_state_id": "",
  "accounts": [
    ""
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sandboxOauthSelectAccounts',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/sandbox/oauth/select_accounts',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SignalEvaluateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": "",
  "account_id": "",
  "client_transaction_id": "",
  "amount": 0,
  "user_present": false,
  "client_user_id": "",
  "is_recurring": false,
  "default_payment_method": "",
  "user": {
    "name": {
      "prefix": "",
      "given_name": "",
      "middle_name": "",
      "family_name": "",
      "suffix": ""
    },
    "phone_number": "",
    "email_address": "",
    "address": {
      "city": "",
      "region": "",
      "street": "",
      "postal_code": "",
      "country": ""
    }
  },
  "device": {
    "ip_address": "",
    "user_agent": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signalEvaluate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/signal/evaluate',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SignalDecisionReportCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "client_transaction_id": "",
  "initiated": false,
  "days_funds_on_hold": 0,
  "decision_outcome": "APPROVE",
  "payment_method": "SAME_DAY_ACH",
  "amount_instantly_available": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signalDecisionReport',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/signal/decision/report',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SignalReturnReportCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "client_transaction_id": "",
  "return_code": "",
  "returned_at": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signalReturnReport',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/signal/return/report',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SignalPrepareCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "access_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signalPrepare',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/signal/prepare',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WalletCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "iso_currency_code": "GBP"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'walletCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/wallet/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WalletGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "wallet_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'walletGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/wallet/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WalletListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "iso_currency_code": "GBP",
  "cursor": "",
  "count": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'walletList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/wallet/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WalletTransactionExecuteCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "idempotency_key": "",
  "wallet_id": "",
  "counterparty": {
    "name": "",
    "numbers": {
      "bacs": "",
      "international": {
        "iban": ""
      }
    },
    "address": {
      "street": [
        ""
      ],
      "city": "",
      "postal_code": "",
      "country": ""
    },
    "date_of_birth": ""
  },
  "amount": {
    "iso_currency_code": "GBP",
    "value": 0
  },
  "reference": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'walletTransactionExecute',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/wallet/transaction/execute',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WalletTransactionGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "transaction_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'walletTransactionGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/wallet/transaction/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class WalletTransactionListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "wallet_id": "",
  "cursor": "",
  "count": 0,
  "options": {
    "start_time": "",
    "end_time": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'walletTransactionList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/wallet/transaction/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransactionsEnhanceCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "account_type": "",
  "transactions": [
    {
      "id": "",
      "description": "",
      "amount": 0,
      "iso_currency_code": ""
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transactionsEnhance',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/beta/transactions/v1/enhance',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransactionsRulesCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "access_token": "",
  "secret": "",
  "personal_finance_category": "",
  "rule_details": {
    "field": "TRANSACTION_ID",
    "type": "EXACT_MATCH",
    "query": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transactionsRulesCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/beta/transactions/rules/v1/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransactionsRulesListCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "access_token": "",
  "secret": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transactionsRulesList',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/beta/transactions/rules/v1/list',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransactionsRulesRemoveCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "access_token": "",
  "secret": "",
  "rule_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transactionsRulesRemove',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/beta/transactions/rules/v1/remove',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransactionsUserInsightsGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "client_user_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transactionsUserInsightsGet',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/beta/transactions/user_insights/v1/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PaymentProfileCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'paymentProfileCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/payment_profile/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PaymentProfileGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "payment_profile_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'paymentProfileGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/payment_profile/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PaymentProfileRemoveCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "payment_profile_token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'paymentProfileRemove',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/payment_profile/remove',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PartnerCustomerCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'partnerCustomerCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/partner/customer/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PartnerCustomerGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'partnerCustomerGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/partner/customer/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PartnerCustomerEnableCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'partnerCustomerEnable',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/partner/customer/enable',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PartnerCustomerRemoveCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'partnerCustomerRemove',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/partner/customer/remove',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PartnerCustomerOauthInstitutionsGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'partnerCustomerOauthInstitutionsGet',
      apiUrl:
          '${ThePlaidAPIGroup.baseUrl}/partner/customer/oauth_institutions/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LinkDeliveryCreateCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "link_token": "",
  "options": {
    "recipient": {
      "communication_methods": [
        {
          "method": "SMS",
          "address": ""
        }
      ],
      "first_name": ""
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'linkDeliveryCreate',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/link_delivery/create',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LinkDeliveryGetCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "client_id": "",
  "secret": "",
  "link_delivery_session_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'linkDeliveryGet',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/link_delivery/get',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class FdxNotificationsCall {
  Future<ApiCallResponse> call({
    String? plaidClientId = '',
    String? plaidSecret = '',
    String? plaidVersion = '',
  }) async {
    const ffApiRequestBody = '''
{
  "notificationId": "",
  "type": "CONSENT_REVOKED",
  "sentOn": "2021-07-15T14:46:41.375Z",
  "category": "SECURITY",
  "severity": "EMERGENCY",
  "priority": "HIGH",
  "publisher": {
    "name": "",
    "type": "DATA_ACCESS_PLATFORM",
    "homeUri": "",
    "logoUri": "",
    "registry": "FDX",
    "registeredEntityName": "",
    "registeredEntityId": ""
  },
  "subscriber": {
    "name": "",
    "type": "DATA_ACCESS_PLATFORM",
    "homeUri": "",
    "logoUri": "",
    "registry": "FDX",
    "registeredEntityName": "",
    "registeredEntityId": ""
  },
  "notificationPayload": {
    "id": "",
    "idType": "ACCOUNT",
    "customFields": [
      {
        "name": "",
        "value": ""
      }
    ]
  },
  "url": {
    "href": "https://api.fi.com/fdx/v4/accounts/12345",
    "action": "GET",
    "rel": "",
    "types": [
      "application/pdf"
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'fdxNotifications',
      apiUrl: '${ThePlaidAPIGroup.baseUrl}/fdx/notifications',
      callType: ApiCallType.POST,
      headers: {
        'PLAID-CLIENT-ID': '$plaidClientId',
        'PLAID-SECRET': '$plaidSecret',
        'Plaid-Version': '$plaidVersion',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End The Plaid API Group Code

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


