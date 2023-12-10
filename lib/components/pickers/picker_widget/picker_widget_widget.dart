import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'picker_widget_model.dart';
export 'picker_widget_model.dart';

class PickerWidgetWidget extends StatefulWidget {
  const PickerWidgetWidget({
    super.key,
    required this.currentTransaction,
    String? currentCategory,
    String? columnView,
  })  : currentCategory = currentCategory ?? 'null',
        columnView = columnView ?? 'null';

  final TransactionsRow? currentTransaction;
  final String currentCategory;
  final String columnView;

  @override
  _PickerWidgetWidgetState createState() => _PickerWidgetWidgetState();
}

class _PickerWidgetWidgetState extends State<PickerWidgetWidget> {
  late PickerWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PickerWidgetModel());

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

    return Align(
      alignment: const AlignmentDirectional(0.00, 1.00),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: Container(
              width: 50.0,
              height: 4.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).textColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Choose Category',
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).headlineSmallFamily),
                      ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
              child: FutureBuilder<List<TransactionCategoryRow>>(
                future: TransactionCategoryTable().queryRows(
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
                  List<TransactionCategoryRow>
                      listViewTransactionCategoryRowList = snapshot.data!;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewTransactionCategoryRowList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewTransactionCategoryRow =
                          listViewTransactionCategoryRowList[listViewIndex];
                      return Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 16.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'PICKER_WIDGET_Container_0pp3t46d_ON_TAP');
                            logFirebaseEvent('Container_backend_call');
                            _model.newCategory =
                                await TransactionsTable().update(
                              data: {
                                'category': valueOrDefault<String>(
                                  listViewTransactionCategoryRow.name,
                                  'null',
                                ),
                              },
                              matchingRows: (rows) => rows.eq(
                                'transaction_id',
                                valueOrDefault<String>(
                                  widget.currentTransaction?.transactionId,
                                  'null',
                                ),
                              ),
                              returnRows: true,
                            );
                            logFirebaseEvent(
                                'Container_update_component_state');
                            _model.updatePage(() {
                              _model.currenTransaction =
                                  widget.currentTransaction;
                              _model.currentCategory =
                                  listViewTransactionCategoryRow.name;
                            });
                            logFirebaseEvent('Container_bottom_sheet');
                            Navigator.pop(context);
                            logFirebaseEvent('Container_bottom_sheet');
                            Navigator.pop(context);

                            setState(() {});
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.8,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).gray600,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 2.0),
                                    spreadRadius: 10.0,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  width: 2.0,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 8.0, 12.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      listViewTransactionCategoryRow.name,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily),
                                          ),
                                    ),
                                    const Icon(
                                      Icons.chevron_right_rounded,
                                      color: Color(0xFF7C8791),
                                      size: 24.0,
                                    ),
                                  ],
                                ),
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
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
            child: Text(
              'Create New Category',
              style: FlutterFlowTheme.of(context).bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
