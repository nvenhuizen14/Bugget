import '/backend/supabase/supabase.dart';
import '/components/nav_bar_floting/nav_bar_floting_widget.dart';
import '/components/transaction_row_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'transactions_model.dart';
export 'transactions_model.dart';

class TransactionsWidget extends StatefulWidget {
  const TransactionsWidget({super.key});

  @override
  State<TransactionsWidget> createState() => _TransactionsWidgetState();
}

class _TransactionsWidgetState extends State<TransactionsWidget>
    with TickerProviderStateMixin {
  late TransactionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransactionsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Transactions'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('TRANSACTIONS_Transactions_ON_INIT_STATE');
      if (FFAppState().startdate == null) {
        logFirebaseEvent('Transactions_update_app_state');
        FFAppState().startdate = functions.currentMonth().start;
        safeSetState(() {});
      } else {
        return;
      }

      if (FFAppState().enddate == null) {
        logFirebaseEvent('Transactions_update_app_state');
        FFAppState().enddate = functions.currentMonth().end;
        safeSetState(() {});
      } else {
        return;
      }
    });

    animationsMap.addAll({
      'iconButtonOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: -5.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'Transactions',
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
              backgroundColor:
                  FlutterFlowTheme.of(context).backgroundComponents,
              iconTheme:
                  IconThemeData(color: FlutterFlowTheme.of(context).black600),
              automaticallyImplyLeading: false,
              leading: Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: 60.0,
                    fillColor: const Color(0x0022282F),
                    icon: FaIcon(
                      FontAwesomeIcons.robot,
                      color: FlutterFlowTheme.of(context).btnText,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent('TRANSACTIONS_PAGE_robot_ICN_ON_TAP');
                      logFirebaseEvent('IconButton_wait__delay');
                      await Future.delayed(const Duration(milliseconds: 600));
                      logFirebaseEvent('IconButton_navigate_to');

                      context.pushNamed('transaction_rules');
                    },
                  ).animateOnActionTrigger(
                    animationsMap['iconButtonOnActionTriggerAnimation']!,
                  ),
                ),
              ),
              actions: const [],
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'Transactions',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).headlineMediumFamily,
                        color: FlutterFlowTheme.of(context).btnText,
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).headlineMediumFamily),
                      ),
                ),
                centerTitle: true,
                expandedTitleScale: 1.0,
                titlePadding:
                    const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
              ),
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-1.0, -1.0),
                        child: Container(
                          constraints: BoxConstraints(
                            minWidth: MediaQuery.sizeOf(context).width * 0.5,
                            maxWidth: MediaQuery.sizeOf(context).width * 0.5,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 5.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'TRANSACTIONS_PAGE_START_DATE_BTN_ON_TAP');
                                  logFirebaseEvent('Button_date_time_picker');
                                  final datePicked1Date = await showDatePicker(
                                    context: context,
                                    initialDate:
                                        (functions.todayminus14days() ??
                                            DateTime.now()),
                                    firstDate: DateTime(1900),
                                    lastDate: DateTime(2050),
                                  );

                                  if (datePicked1Date != null) {
                                    safeSetState(() {
                                      _model.datePicked1 = DateTime(
                                        datePicked1Date.year,
                                        datePicked1Date.month,
                                        datePicked1Date.day,
                                      );
                                    });
                                  }
                                  logFirebaseEvent('Button_update_page_state');
                                  _model.startDate = _model.datePicked1;
                                  safeSetState(() {});
                                  logFirebaseEvent('Button_update_app_state');
                                  FFAppState().startdate = _model.datePicked1;
                                  safeSetState(() {});
                                },
                                text: 'Start Date',
                                icon: const Icon(
                                  Icons.date_range,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  width: 235.0,
                                  height: 40.0,
                                  padding: const EdgeInsets.all(0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Colors.transparent,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .grayIcon,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily),
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 3.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                  hoverColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  hoverTextColor:
                                      FlutterFlowTheme.of(context).white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 15.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'TRANSACTIONS_PAGE_END_DATE_BTN_ON_TAP');
                                logFirebaseEvent('Button_date_time_picker');
                                final datePicked2Date = await showDatePicker(
                                  context: context,
                                  initialDate: getCurrentTimestamp,
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2050),
                                );

                                if (datePicked2Date != null) {
                                  safeSetState(() {
                                    _model.datePicked2 = DateTime(
                                      datePicked2Date.year,
                                      datePicked2Date.month,
                                      datePicked2Date.day,
                                    );
                                  });
                                }
                                logFirebaseEvent('Button_update_page_state');
                                _model.endDate = _model.datePicked2;
                                safeSetState(() {});
                                logFirebaseEvent('Button_update_app_state');
                                FFAppState().enddate = _model.datePicked2;
                                safeSetState(() {});
                              },
                              text: 'End Date',
                              icon: const Icon(
                                Icons.date_range,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: 235.0,
                                height: 40.0,
                                padding: const EdgeInsets.all(0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Colors.transparent,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color:
                                          FlutterFlowTheme.of(context).grayIcon,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily),
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).accent4,
                                  width: 3.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                                hoverColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                hoverTextColor:
                                    FlutterFlowTheme.of(context).white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).backgroundComponents,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              Theme.of(context).brightness == Brightness.dark
                                  ? 'assets/images/buggetbg1.png'
                                  : 'assets/images/buggetbg1.png',
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
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context)
                                .backgroundComponents,
                          ),
                        ),
                        child: FutureBuilder<List<TransactionsRow>>(
                          future: TransactionsTable().queryRows(
                            queryFn: (q) => q
                                .gteOrNull(
                                  'date',
                                  supaSerialize<DateTime>(
                                      FFAppState().startdate),
                                )
                                .lteOrNull(
                                  'date',
                                  supaSerialize<DateTime>(FFAppState().enddate),
                                )
                                .order('date'),
                            limit: 100,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: SpinKitDualRing(
                                    color: FlutterFlowTheme.of(context)
                                        .tertiary400,
                                    size: 50.0,
                                  ),
                                ),
                              );
                            }
                            List<TransactionsRow> listViewTransactionsRowList =
                                snapshot.data!;

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewTransactionsRowList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewTransactionsRow =
                                    listViewTransactionsRowList[listViewIndex];
                                return wrapWithModel(
                                  model: _model.transactionRowModels.getModel(
                                    listViewTransactionsRow.transactionId,
                                    listViewIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  updateOnChange: true,
                                  child: TransactionRowWidget(
                                    key: Key(
                                      'Keyr9j_${listViewTransactionsRow.transactionId}',
                                    ),
                                    parameter1:
                                        listViewTransactionsRow.category,
                                    parameter2: listViewTransactionsRow.date,
                                    parameter3: valueOrDefault<String>(
                                      listViewTransactionsRow.description,
                                      'null',
                                    ),
                                    parameter4: valueOrDefault<String>(
                                      listViewTransactionsRow.category,
                                      'null',
                                    ),
                                    parameter5: valueOrDefault<String>(
                                      listViewTransactionsRow.groupName,
                                      'null',
                                    ),
                                    parameter6: valueOrDefault<double>(
                                      listViewTransactionsRow.amount,
                                      1.0,
                                    ),
                                    parameter7: valueOrDefault<String>(
                                      listViewTransactionsRow.accountName,
                                      'null',
                                    ),
                                    parameter8: valueOrDefault<String>(
                                      listViewTransactionsRow.merchantName,
                                      'null',
                                    ),
                                    parameter9: listViewTransactionsRow,
                                    parameter10: _model.columnView,
                                    parameter11: listViewTransactionsRow.date!,
                                    parameter12: valueOrDefault<String>(
                                      listViewTransactionsRow.description,
                                      'description',
                                    ),
                                    parameter13: valueOrDefault<double>(
                                      listViewTransactionsRow.amount,
                                      1.0,
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
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: wrapWithModel(
                      model: _model.navBarFlotingModel,
                      updateCallback: () => safeSetState(() {}),
                      updateOnChange: true,
                      child: const NavBarFlotingWidget(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
