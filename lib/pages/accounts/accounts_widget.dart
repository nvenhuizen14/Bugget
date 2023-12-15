// ignore_for_file: library_private_types_in_public_api

import '/backend/supabase/supabase.dart';
import '/components/account_card_widget.dart';
import '/components/nav_bar_floting/nav_bar_floting_widget.dart';
import '/components/transaction_row_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'accounts_model.dart';
export 'accounts_model.dart';
import '../../services/plaid_service.dart';

class AccountsWidget extends StatefulWidget {
  const AccountsWidget({super.key});

  @override
  _AccountsWidgetState createState() => _AccountsWidgetState();
}

class _AccountsWidgetState extends State<AccountsWidget>
    with TickerProviderStateMixin {
  late AccountsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final PlaidService _plaidService = PlaidService();
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
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.menu_sharp,
                  color: FlutterFlowTheme.of(context).btnText,
                  size: 30.0,
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
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: AutoSizeText(
                    'Accounts',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineMediumFamily,
                          color: FlutterFlowTheme.of(context).btnText,
                          fontSize: 22.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context)
                                  .headlineMediumFamily),
                        ),
                  ),
                ),
                centerTitle: true,
                expandedTitleScale: 1.0,
              ),
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.067,
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.sizeOf(context).width * 1.0,
                          maxHeight: MediaQuery.sizeOf(context).height * 1.0,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: Image.asset(
                              'assets/images/DALLE_2023-06-18_07.03.40_-_A_dark_painting_of_a_dirty_punk_rock_with_a_mohawk_getting_a_dollar_sign_tattoo._Use_lots_of_dark_colors.png',
                            ).image,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 2.0),
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
                            begin: const AlignmentDirectional(0.03, -1.0),
                            end: const AlignmentDirectional(-0.03, 1.0),
                          ),
                        ),
                        alignment: const AlignmentDirectional(-1.0, -1.0),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    maxHeight:
                                        MediaQuery.sizeOf(context).height *
                                            0.25,
                                  ),
                                  decoration: const BoxDecoration(),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: FutureBuilder<List<AccountRow>>(
                                      future: AccountTable().queryRows(
                                        queryFn: (q) => q,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: SpinKitDualRing(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary400,
                                                size: 50.0,
                                              ),
                                            ),
                                          );
                                        }
                                        List<AccountRow>
                                            listViewAccountRowList =
                                            snapshot.data!;
                                        return ListView.separated(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20.0),
                                          scrollDirection: Axis.horizontal,
                                          itemCount:
                                              listViewAccountRowList.length,
                                          separatorBuilder: (_, __) =>
                                              const SizedBox(width: 20.0),
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewAccountRow =
                                                listViewAccountRowList[
                                                    listViewIndex];
                                            return Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: Container(
                                                  key: ValueKey(
                                                      listViewAccountRow
                                                          .accountId),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'ACCOUNTS_PAGE_Container_qi2jvhr6_ON_TAP');
                                                      logFirebaseEvent(
                                                          'accountCard_update_page_state');
                                                      setState(() {
                                                        _model.currentAccount =
                                                            listViewAccountRow;
                                                        _model.selectedCardId =
                                                            listViewAccountRow
                                                                .accountId;
                                                      });
                                                    },
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .accountCardModels
                                                          .getModel(
                                                        listViewAccountRow
                                                            .accountId,
                                                        listViewIndex,
                                                      ),
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      updateOnChange: true,
                                                      child: AccountCardWidget(
                                                        key: Key(
                                                          'Keyqi2_${listViewAccountRow.accountId}',
                                                        ),
                                                        name: listViewAccountRow
                                                            .name,
                                                        balance:
                                                            listViewAccountRow
                                                                .balance,
                                                        type: listViewAccountRow
                                                            .type,
                                                        institutionName:
                                                            listViewAccountRow
                                                                .institutionName,
                                                        lastUpdate:
                                                            listViewAccountRow
                                                                .lastUpdated!,
                                                        accountid:
                                                            listViewAccountRow
                                                                .accountId,
                                                        borderColor:
                                                            valueOrDefault<
                                                                Color>(
                                                          listViewAccountRow
                                                                      .accountId ==
                                                                  _model
                                                                      .selectedCardId
                                                              ? const Color(
                                                                  0xD527AA9A)
                                                              : const Color(
                                                                  0x5ADBE2E7),
                                                          const Color(0x5ADBE2E7),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'accountCardOnPageLoadAnimation']!),
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
                          ],
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: wrapWithModel(
                          model: _model.navBarFlotingModel,
                          updateCallback: () => setState(() {}),
                          child: const NavBarFlotingWidget(),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 100.0, 0.0, 0.0),
                          child: ClipRRect(
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.084,
                              height: MediaQuery.sizeOf(context).height * 0.991,
                              constraints: BoxConstraints(
                                minWidth:
                                    MediaQuery.sizeOf(context).width * 0.7,
                                minHeight: 20.0,
                                maxWidth:
                                    MediaQuery.sizeOf(context).width * 0.9,
                                maxHeight:
                                    MediaQuery.sizeOf(context).height * 0.43,
                              ),
                              decoration: const BoxDecoration(),
                              child: Stack(
                                children: [
                                  if (_model.recentTransactionsClicked == true)
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child:
                                          FutureBuilder<List<TransactionsRow>>(
                                        future: TransactionsTable().queryRows(
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
                                                width: 50.0,
                                                height: 50.0,
                                                child: SpinKitDualRing(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary400,
                                                  size: 50.0,
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
                                                      valueOrDefault<String>(
                                                    listViewTransactionsRow
                                                        .description,
                                                    'null',
                                                  ),
                                                  parameter13:
                                                      valueOrDefault<double>(
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
                                    GridView(
                                      padding: EdgeInsets.zero,
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 40.0,
                                        mainAxisSpacing: 50.0,
                                        childAspectRatio: 1.0,
                                      ),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: FFButtonWidget(
                                            onPressed: () {
                                               openPlaidLink();
                                            },
                                            text: '',
                                            icon: const Icon(
                                              Icons.account_circle,
                                              size: 60.0,
                                            ),
                                            options: FFButtonOptions(
                                              height: 206.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0x62550F04),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Oswald',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 24.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily),
                                                      ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .lineColor,
                                                width: 6.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              hoverColor: const Color(0x7930686E),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'ACCOUNTS_PAGE__BTN_ON_TAP');
                                              logFirebaseEvent(
                                                  'Button_update_page_state');
                                              setState(() {
                                                _model.recentTransactionsClicked =
                                                    !_model
                                                        .recentTransactionsClicked;
                                              });
                                            },
                                            text: '',
                                            icon: const Icon(
                                              Icons.receipt_long_rounded,
                                              size: 60.0,
                                            ),
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0x62550F04),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Oswald',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 24.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily),
                                                      ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .lineColor,
                                                width: 6.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              hoverColor: const Color(0x7930686E),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: '',
                                            icon: const Icon(
                                              Icons.mode_edit,
                                              size: 60.0,
                                            ),
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0x62550F04),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Oswald',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 24.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily),
                                                      ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .lineColor,
                                                width: 6.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              hoverColor: const Color(0x7930686E),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: '',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0x62550F04),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Oswald',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 24.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily),
                                                      ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .lineColor,
                                                width: 6.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              hoverColor: const Color(0x7930686E),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      if (_model.recentTransactionsClicked == true)
                        Align(
                          alignment: const AlignmentDirectional(-0.97, -0.4),
                          child: FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).black,
                            borderRadius: 30.0,
                            borderWidth: 5.0,
                            buttonSize: MediaQuery.sizeOf(context).width * 0.08,
                            fillColor: FlutterFlowTheme.of(context).secondary,
                            hoverColor: FlutterFlowTheme.of(context).primary,
                            icon: Icon(
                              Icons.chevron_left_outlined,
                              color: FlutterFlowTheme.of(context).black,
                              size: 20.0,
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
            ),
          ),
        ));
  }
}

