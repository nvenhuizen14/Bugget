import '/components/custom_calendar/calendar_weekday/calendar_weekday_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_calendar_model.dart';
export 'custom_calendar_model.dart';

class CustomCalendarWidget extends StatefulWidget {
  const CustomCalendarWidget({
    super.key,
    required this.inputDate,
    this.initialSelectedDate,
    this.onSelectDateAction,
  });

  final DateTime? inputDate;
  final DateTime? initialSelectedDate;
  final Future Function(DateTime? selectedDate)? onSelectDateAction;

  @override
  State<CustomCalendarWidget> createState() => _CustomCalendarWidgetState();
}

class _CustomCalendarWidgetState extends State<CustomCalendarWidget> {
  late CustomCalendarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomCalendarModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CUSTOM_CALENDAR_CustomCalendar_ON_INIT_S');
      logFirebaseEvent('CustomCalendar_update_component_state');
      _model.inputDate = widget.inputDate;
      safeSetState(() {});
      if (widget.initialSelectedDate != null) {
        logFirebaseEvent('CustomCalendar_update_component_state');
        _model.selectedDate = widget.initialSelectedDate;
        safeSetState(() {});
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 420.0,
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            dateTimeFormat(
                              "y",
                              _model.inputDate,
                              locale: FFLocalizations.of(context).languageCode,
                            ),
                            '0',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              25.0, 0.0, 10.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              dateTimeFormat(
                                "MMMM",
                                _model.inputDate,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                              '0',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 24.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlutterFlowIconButton(
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          icon: FaIcon(
                            FontAwesomeIcons.longArrowAltLeft,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            logFirebaseEvent(
                                'CUSTOM_CALENDAR_longArrowAltLeft_ICN_ON_');
                            logFirebaseEvent(
                                'IconButton_update_component_state');
                            _model.inputDate = functions
                                .getLastMonthDateTime(_model.inputDate!);
                            safeSetState(() {});
                          },
                        ),
                        FlutterFlowIconButton(
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          icon: FaIcon(
                            FontAwesomeIcons.longArrowAltRight,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            logFirebaseEvent(
                                'CUSTOM_CALENDAR_longArrowAltRight_ICN_ON');
                            logFirebaseEvent(
                                'IconButton_update_component_state');
                            _model.inputDate = functions
                                .getNextMonthDateTime(_model.inputDate!);
                            safeSetState(() {});
                          },
                        ),
                      ].divide(const SizedBox(width: 50.0)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: wrapWithModel(
                      model: _model.calendarWeekdayModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: const CalendarWeekdayWidget(
                        day: 'Mon',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: wrapWithModel(
                      model: _model.calendarWeekdayModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: const CalendarWeekdayWidget(
                        day: 'Tue',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: wrapWithModel(
                      model: _model.calendarWeekdayModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: const CalendarWeekdayWidget(
                        day: 'Wed',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: wrapWithModel(
                      model: _model.calendarWeekdayModel4,
                      updateCallback: () => safeSetState(() {}),
                      child: const CalendarWeekdayWidget(
                        day: 'Thu',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: wrapWithModel(
                      model: _model.calendarWeekdayModel5,
                      updateCallback: () => safeSetState(() {}),
                      child: const CalendarWeekdayWidget(
                        day: 'Fri',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: wrapWithModel(
                      model: _model.calendarWeekdayModel6,
                      updateCallback: () => safeSetState(() {}),
                      child: const CalendarWeekdayWidget(
                        day: 'Sat',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: wrapWithModel(
                      model: _model.calendarWeekdayModel7,
                      updateCallback: () => safeSetState(() {}),
                      child: const CalendarWeekdayWidget(
                        day: 'Sun',
                      ),
                    ),
                  ),
                ].divide(const SizedBox(width: 12.0)),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                child: Container(
                  width: 371.0,
                  height: 202.0,
                  decoration: const BoxDecoration(),
                  child: Builder(
                    builder: (context) {
                      final calendar = functions
                          .getCalendarMonth(_model.inputDate!)
                          .toList();

                      return GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 7,
                          crossAxisSpacing: 18.0,
                          mainAxisSpacing: 12.0,
                          childAspectRatio: 1.0,
                        ),
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: calendar.length,
                        itemBuilder: (context, calendarIndex) {
                          final calendarItem = calendar[calendarIndex];
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'CUSTOM_CALENDAR_Container_r6dntyw1_ON_TA');
                              logFirebaseEvent(
                                  'Container_update_component_state');
                              _model.selectedDate = calendarItem.calendarDate;
                              safeSetState(() {});
                              logFirebaseEvent('Container_execute_callback');
                              await widget.onSelectDateAction?.call(
                                _model.selectedDate,
                              );
                            },
                            onLongPress: () async {
                              logFirebaseEvent(
                                  'CUSTOM_CALENDAR_Container_r6dntyw1_ON_LO');
                              logFirebaseEvent(
                                  'Container_update_component_state');
                              _model.selectedDate = calendarItem.calendarDate;
                              safeSetState(() {});
                              logFirebaseEvent('Container_navigate_to');

                              context.pushNamed(
                                'DateDetailsPage',
                                queryParameters: {
                                  'selectedDate': serializeParam(
                                    calendarItem.calendarDate,
                                    ParamType.DateTime,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 100),
                                  ),
                                },
                              );
                            },
                            child: Container(
                              width: 36.0,
                              height: 36.0,
                              decoration: BoxDecoration(
                                color: dateTimeFormat(
                                          "d/M/y",
                                          calendarItem.calendarDate,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ) ==
                                        valueOrDefault<String>(
                                          dateTimeFormat(
                                            "d/M/y",
                                            _model.selectedDate,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ),
                                          '0',
                                        )
                                    ? FlutterFlowTheme.of(context)
                                        .primaryBackground
                                    : FlutterFlowTheme.of(context).lineColor,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: dateTimeFormat(
                                            "d/M/y",
                                            calendarItem.calendarDate,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ) ==
                                          valueOrDefault<String>(
                                            dateTimeFormat(
                                              "d/M/y",
                                              getCurrentTimestamp,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            '0',
                                          )
                                      ? FlutterFlowTheme.of(context).info
                                      : Colors.transparent,
                                  width: valueOrDefault<double>(
                                    dateTimeFormat(
                                              "d/M/y",
                                              calendarItem.calendarDate,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ) ==
                                            valueOrDefault<String>(
                                              dateTimeFormat(
                                                "d/M/y",
                                                getCurrentTimestamp,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                              '0',
                                            )
                                        ? 0.8
                                        : 0.0,
                                    0.0,
                                  ),
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    dateTimeFormat(
                                      "d",
                                      dateTimeFromSecondsSinceEpoch(
                                          valueOrDefault<int>(
                                        calendarItem
                                            .calendarDate?.secondsSinceEpoch,
                                        0,
                                      )),
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                    'd',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelLargeFamily,
                                        color: valueOrDefault<Color>(
                                          calendarItem.isPreviousMonth ||
                                                  calendarItem.isNextMonth
                                              ? valueOrDefault<Color>(
                                                  dateTimeFormat(
                                                            "d/M/y",
                                                            calendarItem
                                                                .calendarDate,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ) ==
                                                          valueOrDefault<
                                                              String>(
                                                            dateTimeFormat(
                                                              "d/M/y",
                                                              _model
                                                                  .selectedDate,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                            '0',
                                                          )
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .accent1,
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                                )
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .labelLargeFamily),
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
          ],
        ),
      ),
    );
  }
}
