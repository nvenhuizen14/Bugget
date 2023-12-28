// ignore_for_file: unnecessary_null_comparison, library_private_types_in_public_api, avoid_print

// ignore_for_file: unnecessary_null_comparison, library_private_types_in_public_api, avoid_print

import 'package:bugget/flutter_flow/flutter_flow_animations.dart';
import 'package:bugget/services/plaid_service.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '/backend/supabase/supabase.dart';
import '/components/account_card_widget.dart';
import '/components/nav_bar_floting/nav_bar_floting_widget.dart';
import '/components/transaction_row_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'accounts_model.dart';
export 'accounts_model.dart';

class AccountsWidget extends StatefulWidget {
  const AccountsWidget({super.key});

  @override
  _AccountsWidgetState createState() => _AccountsWidgetState();
}

class _AccountsWidgetState extends State<AccountsWidget> {
  late AccountsModel _model;

  final PlaidService _plaidService = PlaidService();

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'accountCardOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.bounceOut,
          delay: 0.ms,
          duration: 980.ms,
          begin: const Offset(0.0, -100.0),
          end: const Offset(0.0, -29.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountsModel());

    _plaidService.initializePlaid(); // Initialize the Plaid Service

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Accounts'});

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _plaidService.dispose();

    super.dispose();
  }

  void openPlaidLink() async {
    String? linkToken = await _plaidService.fetchLinkToken();
    if (linkToken != null) {
      _plaidService.openPlaidLink(linkToken);
    } else {
      // Handle the error scenario
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Title(
        title: 'Accounts',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.menu_sharp,
                  color: FlutterFlowTheme.of(context).btnText,
                  size: 30,
                ),
                onPressed: () async {
                  logFirebaseEvent('ACCOUNTS_PAGE_menu_sharp_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.pop();
                },
              ),
              actions: const [],
              flexibleSpace: FlexibleSpaceBar(
                title: Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: AutoSizeText(
                    'Accounts',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineMediumFamily,
                          color: FlutterFlowTheme.of(context).btnText,
                          fontSize: 22,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context)
                                  .headlineMediumFamily),
                        ),
                  ),
                ),
                centerTitle: true,
                expandedTitleScale: 1.0,
              ),
              elevation: 0,
            ),
            body: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 1.008,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height * 0.905,
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.sizeOf(context).width,
                      maxHeight: MediaQuery.sizeOf(context).height * 1,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: Image.asset(
                          Theme.of(context).brightness == Brightness.dark
                              ? 'assets/images/accountbackground.png'
                              : 'assets/images/accountbackground.png',
                        ).image,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x33000000),
                          offset: Offset(0, 2),
                        )
                      ],
                      gradient: LinearGradient(
                        colors: [
                          FlutterFlowTheme.of(context).customColor4,
                          FlutterFlowTheme.of(context).secondary,
                          Colors.black,
                          FlutterFlowTheme.of(context).secondaryBackground,
                          const Color(0xFF0C170D)
                        ],
                        stops: const [0.2, 0.4, 0.7, 0.8, 0.9],
                        begin: const AlignmentDirectional(0.03, -1),
                        end: const AlignmentDirectional(-0.03, 1),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0, 1),
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.974,
                            height: MediaQuery.sizeOf(context).height * 0.454,
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.sizeOf(context).width,
                              maxHeight:
                                  MediaQuery.sizeOf(context).height * 0.3,
                            ),
                            decoration: const BoxDecoration(),
                            child: Align(
                              alignment: const AlignmentDirectional(0, 0),
                              child: FutureBuilder<List<AccountRow>>(
                                future: AccountTable().queryRows(
                                  queryFn: (q) => q,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: SpinKitDualRing(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary400,
                                          size: 50,
                                        ),
                                      ),
                                    );
                                  }
                                  List<AccountRow> listViewAccountRowList =
                                      snapshot.data!;
                                  return ListView.separated(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    primary: true,
                                    physics: const BouncingScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: listViewAccountRowList.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(width: 30),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewAccountRow =
                                          listViewAccountRowList[listViewIndex];
                                      return Align(
                                        alignment:
                                            const AlignmentDirectional(0, 0),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(0, 0, 0, 50),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'ACCOUNTS_PAGE_Container_esh41kft_ON_TAP');
                                              logFirebaseEvent(
                                                  'accountCard_update_page_state');
                                              setState(() {
                                                _model.selectedCardId =
                                                    listViewAccountRow
                                                        .accountId;
                                                _model.currentAccount =
                                                    listViewAccountRow;
                                              });
                                            },
                                            child: wrapWithModel(
                                              model: _model.accountCardModels
                                                  .getModel(
                                                listViewAccountRow.accountId,
                                                listViewIndex,
                                              ),
                                              updateCallback: () =>
                                                  setState(() {}),
                                              updateOnChange: true,
                                              child: AccountCardWidget(
                                                key: Key(
                                                  'Keyesh_${listViewAccountRow.accountId}',
                                                ),
                                                name: listViewAccountRow.name,
                                                balance:
                                                    listViewAccountRow.balance,
                                                type: listViewAccountRow.type,
                                                institutionName:
                                                    listViewAccountRow
                                                        .institutionName,
                                                accountid: listViewAccountRow
                                                    .accountId,
                                                borderColor:
                                                    valueOrDefault<Color>(
                                                  listViewAccountRow
                                                              .accountId ==
                                                          valueOrDefault<
                                                              String>(
                                                            _model
                                                                .selectedCardId,
                                                            'null',
                                                          )
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .tertiary400
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .lineColor,
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                                ),
                                                lastUpdate: listViewAccountRow
                                                    .lastUpdated!,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: const AlignmentDirectional(0, 1),
                          child: ClipRRect(
                            child: Container(
                              width: MediaQuery.sizeOf(context).width,
                              height: MediaQuery.sizeOf(context).height * 1,
                              constraints: BoxConstraints(
                                minWidth:
                                    MediaQuery.sizeOf(context).width * 0.7,
                                minHeight: 20,
                                maxWidth:
                                    MediaQuery.sizeOf(context).width * 0.9,
                                maxHeight:
                                    MediaQuery.sizeOf(context).height * 0.43,
                              ),
                              decoration: const BoxDecoration(),
                              child: Align(
                                alignment: const AlignmentDirectional(0, 0),
                                child: SizedBox(
                                  width: MediaQuery.sizeOf(context).width,
                                  height: MediaQuery.sizeOf(context).height * 1,
                                  child: Stack(
                                    alignment: const AlignmentDirectional(0, 0),
                                    children: [
                                      if (_model.recentTransactionsClicked ==
                                          true)
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0, 0),
                                          child: FutureBuilder<
                                              List<TransactionsRow>>(
                                            future:
                                                TransactionsTable().queryRows(
                                              queryFn: (q) => q
                                                  .eq(
                                                    'account_id',
                                                    valueOrDefault<String>(
                                                      _model.currentAccount
                                                          ?.accountId,
                                                      'null',
                                                    ),
                                                  )
                                                  .order('date'),
                                              limit: 10,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child: SpinKitDualRing(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary400,
                                                      size: 50,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<TransactionsRow>
                                                  listViewTransactionsRowList =
                                                  snapshot.data!;
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    listViewTransactionsRowList
                                                        .length,
                                                itemBuilder:
                                                    (context, listViewIndex) {
                                                  final listViewTransactionsRow =
                                                      listViewTransactionsRowList[
                                                          listViewIndex];
                                                  return wrapWithModel(
                                                    model: _model
                                                        .transactionRowModels
                                                        .getModel(
                                                      listViewTransactionsRow
                                                          .transactionId,
                                                      listViewIndex,
                                                    ),
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    updateOnChange: true,
                                                    child: TransactionRowWidget(
                                                      key: Key(
                                                        'Key4d7_${listViewTransactionsRow.transactionId}',
                                                      ),
                                                      parameter1:
                                                          listViewTransactionsRow
                                                              .category,
                                                      parameter3:
                                                          listViewTransactionsRow
                                                              .category,
                                                      parameter4:
                                                          listViewTransactionsRow
                                                              .groupName,
                                                      parameter5:
                                                          listViewTransactionsRow
                                                              .accountName,
                                                      parameter6:
                                                          listViewTransactionsRow
                                                              .amount,
                                                      parameter7:
                                                          listViewTransactionsRow
                                                              .merchantName,
                                                      parameter8:
                                                          listViewTransactionsRow
                                                              .accountId,
                                                      parameter10:
                                                          listViewTransactionsRow
                                                              .transactionId,
                                                      parameter11:
                                                          listViewTransactionsRow
                                                              .date!,
                                                      parameter12:
                                                          valueOrDefault<
                                                              String>(
                                                        listViewTransactionsRow
                                                            .description,
                                                        'null',
                                                      ),
                                                      parameter13:
                                                          valueOrDefault<
                                                              double>(
                                                        listViewTransactionsRow
                                                            .amount,
                                                        1.0,
                                                      ),
                                                      parameter2:
                                                          listViewTransactionsRow
                                                              .date,
                                                      parameter9:
                                                          listViewTransactionsRow,
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      if (!_model.recentTransactionsClicked)
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0, 0),
                                          child: Padding(
                                            padding: const EdgeInsets.all(18),
                                            child: GridView(
                                                padding: EdgeInsets.zero,
                                                gridDelegate:
                                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 2,
                                                  crossAxisSpacing: 40,
                                                  mainAxisSpacing: 50,
                                                  childAspectRatio: 1,
                                                ),
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0, 0),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.291,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.124,
                                                      constraints:
                                                          BoxConstraints(
                                                        maxWidth:
                                                            MediaQuery.sizeOf(
                                                                    context)
                                                                .width,
                                                        maxHeight:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                1,
                                                      ),
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          try {
                                                            String? linkToken =
                                                                await _plaidService
                                                                    .fetchLinkToken();
                                                            if (linkToken ==
                                                                null) {
                                                              // Handle scenario when the link token could not be fetched
                                                              _showErrorDialog(
                                                                  "Failed to fetch the link token. Please try again.");
                                                              return;
                                                            }

                                                            try {
                                                              _plaidService
                                                                  .openPlaidLink(
                                                                      linkToken);
                                                            } catch (e) {
                                                              // Handle errors in opening Plaid Link
                                                              _showErrorDialog(
                                                                  "Failed to open Plaid Link. Please try again.");
                                                            }
                                                          } catch (e) {
                                                            // Handle any other exceptions that might occur
                                                            _showErrorDialog(
                                                                "An unexpected error occurred: ${e.toString()}");
                                                          }
                                                        },
                                                        text: '',
                                                        icon: const Icon(
                                                          Icons.account_circle,
                                                          size: 60,
                                                        ),
                                                        options:
                                                            FFButtonOptions(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.009,
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.961,
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  24, 0, 24, 0),
                                                          iconPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  0, 0, 0, 0),
                                                          color: const Color(
                                                              0x62550F04),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Oswald',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        24,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).titleSmallFamily),
                                                                  ),
                                                          elevation: 3,
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .lineColor,
                                                            width: 6,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                          hoverColor:
                                                              const Color(
                                                                  0x7930686E),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0, 0),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.29,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.127,
                                                      constraints:
                                                          BoxConstraints(
                                                        maxWidth:
                                                            MediaQuery.sizeOf(
                                                                    context)
                                                                .width,
                                                        maxHeight:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                1,
                                                      ),
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0, 0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            logFirebaseEvent(
                                                                'ACCOUNTS_PAGE__BTN_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Button_update_page_state');
                                                            setState(
                                                              () {
                                                                _model.recentTransactionsClicked =
                                                                    !_model
                                                                        .recentTransactionsClicked;
                                                              },
                                                            );
                                                          },
                                                          text: '',
                                                          icon: const Icon(
                                                            Icons
                                                                .receipt_long_rounded,
                                                            size: 60,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.953,
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.987,
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    0, 0, 0, 0),
                                                            iconPadding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    0, 0, 0, 0),
                                                            color: const Color(
                                                                0x62550F04),
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Oswald',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          24,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).titleSmallFamily),
                                                                    ),
                                                            elevation: 3,
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .lineColor,
                                                              width: 6,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        16),
                                                            hoverColor:
                                                                const Color(
                                                                    0x7930686E),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0, 0),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.29,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.126,
                                                      constraints:
                                                          BoxConstraints(
                                                        maxWidth:
                                                            MediaQuery.sizeOf(
                                                                    context)
                                                                .width,
                                                        maxHeight:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                1,
                                                      ),
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: FFButtonWidget(
                                                        onPressed: () {
                                                          print(
                                                              'Button pressed ...');
                                                        },
                                                        text: '',
                                                        icon: const Icon(
                                                          Icons.mode_edit,
                                                          size: 60,
                                                        ),
                                                        options:
                                                            FFButtonOptions(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                      context)
                                                                  .width,
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  1,
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  24, 0, 24, 0),
                                                          iconPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  0, 0, 0, 0),
                                                          color: const Color(
                                                              0x62550F04),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Oswald',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        24,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).titleSmallFamily),
                                                                  ),
                                                          elevation: 3,
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .lineColor,
                                                            width: 6,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                          hoverColor:
                                                              const Color(
                                                                  0x7930686E),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0, 0),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.29,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.12,
                                                      constraints:
                                                          BoxConstraints(
                                                        maxWidth:
                                                            MediaQuery.sizeOf(
                                                                    context)
                                                                .width,
                                                        maxHeight:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                1,
                                                      ),
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: FFButtonWidget(
                                                        onPressed: () {
                                                          print(
                                                              'Button pressed ...');
                                                        },
                                                        text: '',
                                                        options:
                                                            FFButtonOptions(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                      context)
                                                                  .width,
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  1,
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  24, 0, 24, 0),
                                                          iconPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  0, 0, 0, 0),
                                                          color: const Color(
                                                              0x62550F04),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Oswald',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        24,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).titleSmallFamily),
                                                                  ),
                                                          elevation: 3,
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .lineColor,
                                                            width: 6,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                          hoverColor:
                                                              const Color(
                                                                  0x7930686E),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0, 1),
                        child: wrapWithModel(
                          model: _model.navBarFlotingModel,
                          updateCallback: () => setState(() {}),
                          updateOnChange: true,
                          child: const NavBarFlotingWidget(),
                        ),
                      ),
                    ].divide(const SizedBox(height: 10)),
                  ),
                  if (_model.recentTransactionsClicked == true)
                    Align(
                      alignment: const AlignmentDirectional(-0.97, -0.4),
                      child: FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).black,
                        borderRadius: 30,
                        borderWidth: 5,
                        buttonSize: MediaQuery.sizeOf(context).width * 0.08,
                        fillColor: FlutterFlowTheme.of(context).secondary,
                        hoverColor: FlutterFlowTheme.of(context).primary,
                        icon: Icon(
                          Icons.chevron_left_outlined,
                          color: FlutterFlowTheme.of(context).black,
                          size: 20,
                        ),
                        onPressed: () async {
                          logFirebaseEvent(
                              'ACCOUNTS_chevron_left_outlined_ICN_ON_TA');
                          logFirebaseEvent('IconButton_update_page_state');
                          setState(() {
                            _model.recentTransactionsClicked = false;
                          });
                        },
                      ),
                    ),
                ],
              ),
            ),
          ),
        ));
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop(); // This closes the dialog
              },
            ),
          ],
        );
      },
    );
  }
}
