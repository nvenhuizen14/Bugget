import '/backend/supabase/supabase.dart';
import '/components/custom_calendar/time_block/time_block_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'date_details_model.dart';
export 'date_details_model.dart';

class DateDetailsWidget extends StatefulWidget {
  const DateDetailsWidget({
    super.key,
    this.selectedDate,
  });

  final DateTime? selectedDate;

  @override
  State<DateDetailsWidget> createState() => _DateDetailsWidgetState();
}

class _DateDetailsWidgetState extends State<DateDetailsWidget> {
  late DateDetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DateDetailsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 100.0,
          height: 100.0,
          constraints: BoxConstraints(
            minWidth: MediaQuery.sizeOf(context).width * 1.0,
            minHeight: MediaQuery.sizeOf(context).height * 0.25,
            maxWidth: MediaQuery.sizeOf(context).width * 1.0,
            maxHeight: MediaQuery.sizeOf(context).height * 0.25,
          ),
          decoration: const BoxDecoration(),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 100.0,
                sigmaY: 100.0,
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.95,
                  height: MediaQuery.sizeOf(context).height * 0.95,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(14.0),
                    border: Border.all(
                      color: const Color(0xFF192F3C),
                      width: 4.0,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Text(
                            valueOrDefault<String>(
                              dateTimeFormat(
                                "EEEE",
                                widget.selectedDate,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                              'long date',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 28.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            dateTimeFormat(
                              "yMMMd",
                              widget.selectedDate,
                              locale: FFLocalizations.of(context).languageCode,
                            ),
                            'long date',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 28.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.sizeOf(context).height * 1.0,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).lineColor,
                        width: 2.0,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Builder(
                            builder: (context) {
                              final timeSegments = functions
                                  .generateTimeSegments(
                                      widget.selectedDate!, _model.zoomLevel!)
                                  .map((e) => e)
                                  .toList();

                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                itemCount: timeSegments.length,
                                separatorBuilder: (_, __) => SizedBox(
                                    height: valueOrDefault<double>(
                                  _model.itemSpacing?.toDouble(),
                                  30.0,
                                )),
                                itemBuilder: (context, timeSegmentsIndex) {
                                  final timeSegmentsItem =
                                      timeSegments[timeSegmentsIndex];
                                  return Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: FutureBuilder<List<EventRow>>(
                                      future: EventTable().queryRows(
                                        queryFn: (q) => q.eqOrNull(
                                          'startDate',
                                          supaSerialize<DateTime>(
                                              widget.selectedDate),
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
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary400,
                                                size: 50.0,
                                              ),
                                            ),
                                          );
                                        }
                                        List<EventRow> timeBlockEventRowList =
                                            snapshot.data!;

                                        return wrapWithModel(
                                          model:
                                              _model.timeBlockModels.getModel(
                                            timeSegmentsItem.toString(),
                                            timeSegmentsIndex,
                                          ),
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          updateOnChange: true,
                                          child: TimeBlockWidget(
                                            key: Key(
                                              'Keycnq_${timeSegmentsItem.toString()}',
                                            ),
                                            zoom: _model.zoomLevel,
                                            time: timeSegmentsItem,
                                            events: timeBlockEventRowList
                                                .where((e) =>
                                                    dateTimeFormat(
                                                      "jm",
                                                      e.startTime.time,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ) ==
                                                    valueOrDefault<String>(
                                                      dateTimeFormat(
                                                        "jm",
                                                        timeSegmentsItem,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      ),
                                                      '1:00 PM',
                                                    ))
                                                .toList(),
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-0.38, 0.95),
                                child: FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  borderRadius: 30.0,
                                  borderWidth: 3.0,
                                  buttonSize: 50.0,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  hoverColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  icon: FaIcon(
                                    FontAwesomeIcons.minus,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 30.0,
                                  ),
                                  onPressed: (_model.zoomLevel! <= 1)
                                      ? null
                                      : () async {
                                          logFirebaseEvent(
                                              'DATE_DETAILS_COMP_minus_ICN_ON_TAP');
                                          logFirebaseEvent(
                                              'IconButton_update_component_state');
                                          _model.zoomLevel =
                                              _model.zoomLevel! + -1;
                                          _model.itemSpacing =
                                              _model.itemSpacing! + -30;
                                          safeSetState(() {});
                                        },
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.38, 0.95),
                                child: FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  borderRadius: 30.0,
                                  borderWidth: 3.0,
                                  buttonSize: 50.0,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  hoverColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  hoverIconColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  icon: Icon(
                                    Icons.add,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 30.0,
                                  ),
                                  onPressed: (_model.zoomLevel! >= 4)
                                      ? null
                                      : () async {
                                          logFirebaseEvent(
                                              'DATE_DETAILS_COMP_add_ICN_ON_TAP');
                                          logFirebaseEvent(
                                              'IconButton_update_component_state');
                                          _model.zoomLevel =
                                              _model.zoomLevel! + 1;
                                          _model.itemSpacing =
                                              _model.itemSpacing! + 30;
                                          safeSetState(() {});
                                        },
                                ),
                              ),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
