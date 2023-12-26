// ignore_for_file: library_private_types_in_public_api

import 'package:bugget/components/spending_chart.dart';
import '/backend/supabase/supabase.dart';
import '/components/create_budget_modal_widget.dart';
import '/components/nav_bar_floting/nav_bar_floting_widget.dart';
import '/components/total_budget_spent_graph/total_budget_spent_graph_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

import 'budgets_model.dart';
export 'budgets_model.dart';

class BudgetsWidget extends StatefulWidget {
  const BudgetsWidget({super.key});

  @override
  _BudgetsWidgetState createState() => _BudgetsWidgetState();
}

class _BudgetsWidgetState extends State<BudgetsWidget>
    with TickerProviderStateMixin {
  late BudgetsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  Future<List<Map<String, dynamic>>> fetchSpendingData() async {
  try {
    final response = await SupaFlow.client
        .from('top_transaction_groups')
        .select()
        .limit(5);
       // Using 'get' for select queries

    // If the response is not a list, consider it an error
    if (response is! List) {
      throw Exception('Error fetching data');
    }

    // Convert response to list of maps
    return List<Map<String, dynamic>>.from(response);
  } catch (e) {
    // Catch any other errors that might occur
    throw Exception('Error occurred: $e');
  }
}

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BudgetsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Budgets'});
    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
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
        title: 'Budgets',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: const Color(0xFF1D2428),
            body: SafeArea(
              top: true,
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 1,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Align(
                          alignment: const Alignment(-1, 0),
                          child: FlutterFlowButtonTabBar(
                            useToggleButtonStyle: false,
                            labelStyle:
                                FlutterFlowTheme.of(context).titleMedium,
                            unselectedLabelStyle: const TextStyle(),
                            labelColor: FlutterFlowTheme.of(context).btnText,
                            unselectedLabelColor:
                                FlutterFlowTheme.of(context).black,
                            backgroundColor:
                                FlutterFlowTheme.of(context).grayIcon,
                            borderColor: FlutterFlowTheme.of(context).secondary,
                            borderWidth: 2,
                            borderRadius: 0,
                            elevation: 0,
                            buttonMargin:
                                const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(50, 15, 50, 15),
                            tabs: const [
                              Tab(
                                text: 'Budgets',
                              ),
                              Tab(
                                text: 'Savings',
                              ),
                            ],
                            controller: _model.tabBarController,
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _model.tabBarController,
                            children: [
                              KeepAliveWidgetWrapper(
                                builder: (context) => SizedBox(
                                  width: MediaQuery.sizeOf(context).width,
                                  height: MediaQuery.sizeOf(context).height * 1,
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: const AlignmentDirectional(0, 0),
                                        child: ClipRRect(
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                .width,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.762,
                                            constraints: BoxConstraints(
                                              minWidth:
                                                  MediaQuery.sizeOf(context)
                                                      .width,
                                              minHeight:
                                                  MediaQuery.sizeOf(context)
                                                          .height *
                                                      1,
                                              maxWidth:
                                                  MediaQuery.sizeOf(context)
                                                      .width,
                                              maxHeight:
                                                  MediaQuery.sizeOf(context)
                                                          .height *
                                                      1,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.asset(
                                                  Theme.of(context)
                                                              .brightness ==
                                                          Brightness.dark
                                                      ? 'assets/images/budgetbackground.png'
                                                      : 'assets/images/budgetbackground.png',
                                                ).image,
                                              ),
                                            ),
                                            child: Align(
                                              alignment:
                                                  const AlignmentDirectional(0, 1),
                                              child: ClipRRect(
                                                child: Container(
                                                  constraints: BoxConstraints(
                                                    maxWidth: MediaQuery.sizeOf(
                                                            context)
                                                        .width,
                                                    maxHeight:
                                                        MediaQuery.sizeOf(
                                                                    context)
                                                                .height *
                                                            0.45,
                                                  ),
                                                  decoration: const BoxDecoration(
                                                    color: Color(0x3C14181B),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0, 1),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(20),
                                                    child: FutureBuilder<
                                                        List<GroupSummaryRow>>(
                                                      future:
                                                          GroupSummaryTable()
                                                              .queryRows(
                                                        queryFn: (q) => q,
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50,
                                                              height: 50,
                                                              child:
                                                                  SpinKitDualRing(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary400,
                                                                size: 50,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<GroupSummaryRow>
                                                            listViewGroupSummaryRowList =
                                                            snapshot.data!;
                                                        return ListView
                                                            .separated(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listViewGroupSummaryRowList
                                                                  .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              const SizedBox(
                                                                  height: 10),
                                                          itemBuilder: (context,
                                                              listViewIndex) {
                                                            final listViewGroupSummaryRow =
                                                                listViewGroupSummaryRowList[
                                                                    listViewIndex];
                                                            return Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.98,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .overlay,
                                                              child:
                                                                  ExpandableNotifier(
                                                                child:
                                                                    ExpandablePanel(
                                                                  header: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                              child: Text(
                                                                                valueOrDefault<String>(
                                                                                  listViewGroupSummaryRow.groupName,
                                                                                  'null',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).displaySmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).displaySmallFamily,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 24,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).displaySmallFamily),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Divider(
                                                                          thickness:
                                                                              1,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).accent4,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  collapsed:
                                                                      Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0,
                                                                            0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0, -1),
                                                                            child:
                                                                                Text(
                                                                              '0\$',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    fontSize: 14,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              LinearPercentIndicator(
                                                                            percent:
                                                                                valueOrDefault<double>(
                                                                              listViewGroupSummaryRow.groupBudgetPercentage,
                                                                              1.0,
                                                                            ),
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 0.45,
                                                                            lineHeight:
                                                                                18,
                                                                            animation:
                                                                                true,
                                                                            animateFromLastPercent:
                                                                                true,
                                                                            progressColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).accent4,
                                                                            center:
                                                                                Text(
                                                                              valueOrDefault<String>(
                                                                                formatNumber(
                                                                                  listViewGroupSummaryRow.groupBudgetActual,
                                                                                  formatType: FormatType.decimal,
                                                                                  decimalType: DecimalType.automatic,
                                                                                  currency: '\$',
                                                                                ),
                                                                                '1',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                                    fontSize: 15,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineSmallFamily),
                                                                                  ),
                                                                            ),
                                                                            barRadius:
                                                                                const Radius.circular(16),
                                                                            padding:
                                                                                EdgeInsets.zero,
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0, -1),
                                                                            child:
                                                                                Text(
                                                                              valueOrDefault<String>(
                                                                                formatNumber(
                                                                                  listViewGroupSummaryRow.groupBudgetLimit,
                                                                                  formatType: FormatType.decimal,
                                                                                  decimalType: DecimalType.automatic,
                                                                                  currency: '\$',
                                                                                ),
                                                                                '1',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  expanded:
                                                                      Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            1,
                                                                            0),
                                                                    child:
                                                                        Container(
                                                                      constraints:
                                                                          BoxConstraints(
                                                                        maxWidth:
                                                                            MediaQuery.sizeOf(context).width *
                                                                                0.9,
                                                                        maxHeight:
                                                                            MediaQuery.sizeOf(context).height *
                                                                                0.2,
                                                                      ),
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child: FutureBuilder<
                                                                          List<
                                                                              BudgetingRow>>(
                                                                        future:
                                                                            BudgetingTable().queryRows(
                                                                          queryFn: (q) =>
                                                                              q.eq(
                                                                            'group',
                                                                            listViewGroupSummaryRow.groupName,
                                                                          ),
                                                                        ),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
                                                                            return Center(
                                                                              child: SizedBox(
                                                                                width: 50,
                                                                                height: 50,
                                                                                child: SpinKitDualRing(
                                                                                  color: FlutterFlowTheme.of(context).tertiary400,
                                                                                  size: 50,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          }
                                                                          List<BudgetingRow>
                                                                              listViewBudgetingRowList =
                                                                              snapshot.data!;
                                                                          return ListView
                                                                              .builder(
                                                                            padding:
                                                                                EdgeInsets.zero,
                                                                            scrollDirection:
                                                                                Axis.vertical,
                                                                            itemCount:
                                                                                listViewBudgetingRowList.length,
                                                                            itemBuilder:
                                                                                (context, listViewIndex) {
                                                                              final listViewBudgetingRow = listViewBudgetingRowList[listViewIndex];
                                                                              return Align(
                                                                                alignment: const AlignmentDirectional(0, -1),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(-1, -1),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            children: [
                                                                                              Text(
                                                                                                valueOrDefault<String>(
                                                                                                  listViewBudgetingRow.budgetItem,
                                                                                                  'null',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                      fontSize: 18,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                    ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Divider(
                                                                                          thickness: 1,
                                                                                          endIndent: 250,
                                                                                          color: FlutterFlowTheme.of(context).accent4,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Align(
                                                                                            alignment: const AlignmentDirectional(0, -1),
                                                                                            child: Text(
                                                                                              '0\$',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        LinearPercentIndicator(
                                                                                          percent: valueOrDefault<double>(
                                                                                            listViewBudgetingRow.budgetPercentage,
                                                                                            1.0,
                                                                                          ),
                                                                                          width: MediaQuery.sizeOf(context).width * 0.45,
                                                                                          lineHeight: 18,
                                                                                          animation: true,
                                                                                          animateFromLastPercent: true,
                                                                                          progressColor: FlutterFlowTheme.of(context).primary,
                                                                                          backgroundColor: FlutterFlowTheme.of(context).accent4,
                                                                                          center: Text(
                                                                                            valueOrDefault<String>(
                                                                                              formatNumber(
                                                                                                listViewBudgetingRow.budgetActual,
                                                                                                formatType: FormatType.decimal,
                                                                                                decimalType: DecimalType.automatic,
                                                                                                currency: '\$',
                                                                                              ),
                                                                                              '1',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  fontSize: 16,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineSmallFamily),
                                                                                                ),
                                                                                          ),
                                                                                          barRadius: const Radius.circular(16),
                                                                                          padding: EdgeInsets.zero,
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: Align(
                                                                                            alignment: const AlignmentDirectional(0, -1),
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                formatNumber(
                                                                                                  listViewBudgetingRow.budgetLimit,
                                                                                                  formatType: FormatType.decimal,
                                                                                                  decimalType: DecimalType.automatic,
                                                                                                  currency: '\$',
                                                                                                ),
                                                                                                '1',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Divider(
                                                                                      thickness: 1,
                                                                                      color: FlutterFlowTheme.of(context).accent4,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              );
                                                                            },
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  theme:
                                                                      ExpandableThemeData(
                                                                    tapHeaderToExpand:
                                                                        true,
                                                                    tapBodyToExpand:
                                                                        false,
                                                                    tapBodyToCollapse:
                                                                        true,
                                                                    headerAlignment:
                                                                        ExpandablePanelHeaderAlignment
                                                                            .center,
                                                                    hasIcon:
                                                                        true,
                                                                    expandIcon:
                                                                        FontAwesomeIcons
                                                                            .angleUp,
                                                                    collapseIcon:
                                                                        FontAwesomeIcons
                                                                            .angleDown,
                                                                    iconColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .btnText,
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
                                          ),
                                        ),
                                      ),
                                     Align(
                                        alignment: const AlignmentDirectional(-0.02, -0.2),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent('BUDGETS_PAGE_Text_g0ron1ca_ON_TAP');
                                              logFirebaseEvent('Text_bottom_sheet');
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor: Colors.transparent,
                                                useSafeArea: true,
                                                context: context,
                                                builder: (context) {
                                                  return WebViewAware(
                                                    child: GestureDetector(
                                                      onTap: () => _model.unfocusNode.canRequestFocus 
                                                          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                          : FocusScope.of(context).unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery.viewInsetsOf(context),
                                                        child: SizedBox(
                                                          height: MediaQuery.of(context).size.height * 0.5,
                                                          child: const CreateBudgetModalWidget(),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) => safeSetState(() {}));
                                            },
                                            child: Text(
                                              'Create A Budget',
                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: double.infinity,
                                        height: 293,
                                        child: CarouselSlider(
                                          items: [
                                            Align(
                                              alignment: const AlignmentDirectional(0, -1),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width * 0.95,
                                                  height: MediaQuery.of(context).size.height * 0.25,
                                                  decoration: BoxDecoration(
                                                    color: const Color(0xD0262D34),
                                                    borderRadius: BorderRadius.circular(5),
                                                    border: Border.all(
                                                      color: FlutterFlowTheme.of(context).secondary,
                                                      width: 4,
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment: const AlignmentDirectional(0, 0),
                                                    child: wrapWithModel(
                                                      model: _model.totalBudgetSpentGraphModel,
                                                      updateCallback: () => setState(() {}),
                                                      updateOnChange: true,
                                                      child: const TotalBudgetSpentGraphWidget(),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                                width: MediaQuery.of(context).size.width * 0.95,
                                                height: MediaQuery.of(context).size.height * 0.35,
                                                decoration: BoxDecoration(
                                                  color: const Color(0xD0262D34),
                                                  borderRadius: BorderRadius.circular(5),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(context).secondary,
                                                    width: 4,
                                                  ),
                                                ),
                                                child: FutureBuilder<List<Map<String, dynamic>>>(
                                                  future: fetchSpendingData(),
                                                  builder: (context, snapshot) {
                                                    if (snapshot.connectionState == ConnectionState.waiting) {
                                                      return const CircularProgressIndicator();
                                                    } else if (snapshot.hasError) {
                                                      return Text('Error: ${snapshot.error}');
                                                    } else if (snapshot.data == null || snapshot.data!.isEmpty) {
                                                      return const Text('No data available');
                                                    } else {
                                                      // Use the updated SpendingChart widget
                                                      return SpendingChart(data: snapshot.data!);
                                                    }
                                                  },
                                                ),
                                              ),
                                            Container(),
                                            Container(),
                                            Container(),
                                          ],
                                          carouselController:_model.carouselController ??= CarouselController(),
                                          options: CarouselOptions(
                                            initialPage: 1,
                                            viewportFraction: 1,
                                            disableCenter: false,
                                            enlargeCenterPage: true,
                                            enlargeFactor: 0.25,
                                            enableInfiniteScroll: true,
                                            scrollDirection: Axis.horizontal,
                                            autoPlay: true,
                                            autoPlayAnimationDuration:
                                                const Duration(milliseconds: 800),
                                            autoPlayInterval: const Duration(
                                                milliseconds: (800 + 4000)),
                                            autoPlayCurve: Curves.linear,
                                            pauseAutoPlayInFiniteScroll: true,
                                            onPageChanged: (index, _) => _model
                                                .carouselCurrentIndex = index,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              KeepAliveWidgetWrapper(
                                builder: (context) => Container(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.15, 1),
                      child: wrapWithModel(
                        model: _model.navBarFlotingModel,
                        updateCallback: () => setState(() {}),
                        updateOnChange: true,
                        child: const NavBarFlotingWidget(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                      child: Icon(
                        Icons.menu,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      );
    }
   }