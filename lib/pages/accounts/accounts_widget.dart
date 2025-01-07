import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/account_card/account_card_widget.dart';
import '/components/nav_bar_floting/nav_bar_floting_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/walkthroughs/accounts.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'accounts_model.dart';
export 'accounts_model.dart';

class AccountsWidget extends StatefulWidget {
  const AccountsWidget({super.key});

  @override
  State<AccountsWidget> createState() => _AccountsWidgetState();
}

class _AccountsWidgetState extends State<AccountsWidget> {
  late AccountsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Accounts'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'Accounts',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
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
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: AutoSizeText(
                      'Accounts',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineMediumFamily,
                                color: FlutterFlowTheme.of(context).btnText,
                                fontSize: 22.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineMediumFamily),
                              ),
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
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 0.905,
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.sizeOf(context).width * 1.0,
                        maxHeight: MediaQuery.sizeOf(context).height * 1.0,
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
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
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
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.974,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.454,
                                constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.sizeOf(context).width * 1.0,
                                  maxHeight:
                                      MediaQuery.sizeOf(context).height * 0.3,
                                ),
                                decoration: const BoxDecoration(),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
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
                                      List<AccountRow> listViewAccountRowList =
                                          snapshot.data!;

                                      return ListView.separated(
                                        key: const ValueKey('12'),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 30.0),
                                        scrollDirection: Axis.horizontal,
                                        itemCount:
                                            listViewAccountRowList.length,
                                        separatorBuilder: (_, __) =>
                                            const SizedBox(width: 30.0),
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewAccountRow =
                                              listViewAccountRowList[
                                                  listViewIndex];
                                          return Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 50.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'ACCOUNTS_PAGE_Container_esh41kft_ON_TAP');
                                                  logFirebaseEvent(
                                                      'accountCard_update_page_state');
                                                  _model.selectedCardId =
                                                      listViewAccountRow
                                                          .accountId;
                                                  _model.currentAccount =
                                                      listViewAccountRow;
                                                  safeSetState(() {});
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
                                                      safeSetState(() {}),
                                                  updateOnChange: true,
                                                  child: AccountCardWidget(
                                                    key: Key(
                                                      'Keyesh_${listViewAccountRow.accountId}',
                                                    ),
                                                    name:
                                                        listViewAccountRow.name,
                                                    balance: listViewAccountRow
                                                        .balance,
                                                    type:
                                                        listViewAccountRow.type,
                                                    institutionName:
                                                        listViewAccountRow
                                                            .institutionName,
                                                    accountid:
                                                        listViewAccountRow
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
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .lineColor,
                                                    ),
                                                    lastUpdate:
                                                        listViewAccountRow
                                                            .lastUpdated!,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ).addWalkthrough(
                                        listViewWrwfhlxb,
                                        _model.accountsController,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          if (!_model.recentTransactionsClicked)
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: GridView(
                                    padding: EdgeInsets.zero,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 40.0,
                                      mainAxisSpacing: 4.0,
                                      childAspectRatio: 1.0,
                                    ),
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: ClipRRect(
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.291,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.124,
                                            constraints: BoxConstraints(
                                              maxWidth:
                                                  MediaQuery.sizeOf(context)
                                                          .width *
                                                      1.0,
                                              maxHeight:
                                                  MediaQuery.sizeOf(context)
                                                          .height *
                                                      1.0,
                                            ),
                                            decoration: const BoxDecoration(),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  logFirebaseEvent(
                                                      'ACCOUNTS_PAGE__BTN_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Button_backend_call');
                                                  _model.linkToken =
                                                      await PlaidGroup
                                                          .createTokenCall
                                                          .call(
                                                    userId: currentUserUid,
                                                  );

                                                  logFirebaseEvent(
                                                      'Button_custom_action');
                                                  await actions.initPlaidLink(
                                                    context,
                                                    valueOrDefault<String>(
                                                      PlaidGroup.createTokenCall
                                                          .linkToken(
                                                        (_model.linkToken
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'linkToken',
                                                    ),
                                                    (publicToken) async {
                                                      logFirebaseEvent(
                                                          '_backend_call');
                                                      _model.exchangeToken =
                                                          await BackendExchangeTokenCall
                                                              .call(
                                                        publicToken:
                                                            publicToken,
                                                        userId: currentUserUid,
                                                      );
                                                    },
                                                  );

                                                  safeSetState(() {});
                                                },
                                                text: '',
                                                icon: const Icon(
                                                  Icons.account_circle,
                                                  size: 55.0,
                                                ),
                                                options: FFButtonOptions(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          1.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: const Color(0x62550F04),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Oswald',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Oswald'),
                                                      ),
                                                  elevation: 3.0,
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lineColor,
                                                    width: 6.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15.0),
                                                  hoverColor: const Color(0x7930686E),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: ClipRRect(
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.29,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.127,
                                            constraints: BoxConstraints(
                                              maxWidth:
                                                  MediaQuery.sizeOf(context)
                                                          .width *
                                                      1.0,
                                              maxHeight:
                                                  MediaQuery.sizeOf(context)
                                                          .height *
                                                      1.0,
                                            ),
                                            decoration: const BoxDecoration(),
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  logFirebaseEvent(
                                                      'ACCOUNTS_PAGE__BTN_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Button_update_page_state');
                                                  _model.recentTransactionsClicked =
                                                      !_model
                                                          .recentTransactionsClicked;
                                                  safeSetState(() {});
                                                },
                                                text: '',
                                                icon: const Icon(
                                                  Icons.receipt_long_rounded,
                                                  size: 60.0,
                                                ),
                                                options: FFButtonOptions(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.953,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          1.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: const Color(0x62550F04),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Oswald',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Oswald'),
                                                      ),
                                                  elevation: 3.0,
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lineColor,
                                                    width: 6.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                  hoverColor: const Color(0x7930686E),
                                                ),
                                              ).addWalkthrough(
                                                button68pfkw8y,
                                                _model.accountsController,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: ClipRRect(
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.29,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.126,
                                            constraints: BoxConstraints(
                                              maxWidth:
                                                  MediaQuery.sizeOf(context)
                                                          .width *
                                                      1.0,
                                              maxHeight:
                                                  MediaQuery.sizeOf(context)
                                                          .height *
                                                      1.0,
                                            ),
                                            decoration: const BoxDecoration(),
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () {
                                                  print('Button pressed ...');
                                                },
                                                text: '',
                                                icon: const Icon(
                                                  Icons.mode_edit,
                                                  size: 55.0,
                                                ),
                                                options: FFButtonOptions(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          1.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: const Color(0x62550F04),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Oswald',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Oswald'),
                                                      ),
                                                  elevation: 3.0,
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lineColor,
                                                    width: 6.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15.0),
                                                  hoverColor: const Color(0x7930686E),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: ClipRRect(
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.29,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.12,
                                            constraints: BoxConstraints(
                                              maxWidth:
                                                  MediaQuery.sizeOf(context)
                                                          .width *
                                                      1.0,
                                              maxHeight:
                                                  MediaQuery.sizeOf(context)
                                                          .height *
                                                      1.0,
                                            ),
                                            decoration: const BoxDecoration(),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: '',
                                              options: FFButtonOptions(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        1.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: const Color(0x62550F04),
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Oswald',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 24.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          GoogleFonts.asMap()
                                                              .containsKey(
                                                                  'Oswald'),
                                                    ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  width: 6.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                                hoverColor: const Color(0x7930686E),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: wrapWithModel(
                              model: _model.navBarFlotingModel,
                              updateCallback: () => safeSetState(() {}),
                              updateOnChange: true,
                              child: const NavBarFlotingWidget(),
                            ),
                          ),
                        ].divide(const SizedBox(height: 10.0)),
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
                            _model.recentTransactionsClicked = false;
                            safeSetState(() {});
                          },
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  TutorialCoachMark createPageWalkthrough(BuildContext context) =>
      TutorialCoachMark(
        targets: createWalkthroughTargets(context),
        onFinish: () async {
          safeSetState(() => _model.accountsController = null);
        },
        onSkip: () {
          return true;
        },
      );
}
