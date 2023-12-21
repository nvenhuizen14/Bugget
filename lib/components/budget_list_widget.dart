import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'budget_list_model.dart';
export 'budget_list_model.dart';

class BudgetListWidget extends StatefulWidget {
  const BudgetListWidget({
    super.key,
    required this.groupName,
    required this.groupActual,
    required this.groupPercentage,
    required this.groupLimit,
    Color? barColor,
    required this.budgetItem,
    required this.budgetActual,
    required this.budgetPercentage,
    required this.budgetLimit,
  })  : barColor = barColor ?? const Color(0xA7550F04);

  final String? groupName;
  final String? groupActual;
  final double? groupPercentage;
  final String? groupLimit;
  final Color barColor;
  final String? budgetItem;
  final String? budgetActual;
  final double? budgetPercentage;
  final String? budgetLimit;

  @override
  _BudgetListWidgetState createState() => _BudgetListWidgetState();
}

class _BudgetListWidgetState extends State<BudgetListWidget> {
  late BudgetListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BudgetListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<List<GroupSummaryRow>>(
      future: GroupSummaryTable().queryRows(
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
                color: FlutterFlowTheme.of(context).tertiary400,
                size: 50.0,
              ),
            ),
          );
        }
        List<GroupSummaryRow> listViewGroupSummaryRowList = snapshot.data!;
        return ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          itemCount: listViewGroupSummaryRowList.length,
          itemBuilder: (context, listViewIndex) {
            // ignore: unused_local_variable
            final listViewGroupSummaryRow =
                listViewGroupSummaryRowList[listViewIndex];
            return Container(
              width: MediaQuery.sizeOf(context).width * 0.98,
              color: FlutterFlowTheme.of(context).overlay,
              child: ExpandableNotifier(
                child: ExpandablePanel(
                  header: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                widget.groupName,
                                'null',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .displaySmallFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 24.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .displaySmallFamily),
                                  ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.groupActual,
                                    '1',
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                            ),
                            LinearPercentIndicator(
                              percent: valueOrDefault<double>(
                                widget.groupPercentage,
                                1.0,
                              ),
                              width: MediaQuery.sizeOf(context).width * 0.5,
                              lineHeight: 18.0,
                              animation: true,
                              animateFromLastPercent: true,
                              progressColor:
                                  FlutterFlowTheme.of(context).primary,
                              backgroundColor:
                                  FlutterFlowTheme.of(context).accent4,
                              center: Text(
                                '50%',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .headlineSmallFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 16.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmallFamily),
                                    ),
                              ),
                              barRadius: const Radius.circular(16.0),
                              padding: EdgeInsets.zero,
                            ),
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.groupLimit,
                                    '1',
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).accent4,
                        ),
                      ],
                    ),
                  ),
                  collapsed: Container(),
                  expanded: Align(
                    alignment: const AlignmentDirectional(1.0, 0.0),
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.sizeOf(context).width * 0.9,
                        maxHeight: MediaQuery.sizeOf(context).height * 0.2,
                      ),
                      decoration: const BoxDecoration(),
                      child: FutureBuilder<List<BudgetingRow>>(
                        future: BudgetingTable().queryRows(
                          queryFn: (q) => q.eq(
                            'group',
                            _model.groupName,
                          ),
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
                                      FlutterFlowTheme.of(context).tertiary400,
                                  size: 50.0,
                                ),
                              ),
                            );
                          }
                          List<BudgetingRow> listViewBudgetingRowList =
                              snapshot.data!;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewBudgetingRowList.length,
                            itemBuilder: (context, listViewIndex) {
                              // ignore: unused_local_variable
                              final listViewBudgetingRow =
                                  listViewBudgetingRowList[listViewIndex];
                              return Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          valueOrDefault<String>(
                                            widget.budgetItem,
                                            'null',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 18.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            valueOrDefault<String>(
                                              widget.budgetActual,
                                              '1',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                        LinearPercentIndicator(
                                          percent: valueOrDefault<double>(
                                            widget.budgetPercentage,
                                            1.0,
                                          ),
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.45,
                                          lineHeight: 18.0,
                                          animation: true,
                                          animateFromLastPercent: true,
                                          progressColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent4,
                                          center: Text(
                                            '50%',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmallFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                  fontSize: 16.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(FlutterFlowTheme
                                                              .of(context)
                                                          .headlineSmallFamily),
                                                ),
                                          ),
                                          barRadius: const Radius.circular(16.0),
                                          padding: EdgeInsets.zero,
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, -1.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                widget.budgetLimit,
                                                '1',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).accent4,
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
                  theme: const ExpandableThemeData(
                    tapHeaderToExpand: true,
                    tapBodyToExpand: false,
                    tapBodyToCollapse: true,
                    headerAlignment: ExpandablePanelHeaderAlignment.center,
                    hasIcon: false,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
