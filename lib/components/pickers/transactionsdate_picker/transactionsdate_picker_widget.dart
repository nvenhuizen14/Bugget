import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'transactionsdate_picker_model.dart';
export 'transactionsdate_picker_model.dart';

class TransactionsdatePickerWidget extends StatefulWidget {
  const TransactionsdatePickerWidget({super.key});

  @override
  State<TransactionsdatePickerWidget> createState() =>
      _TransactionsdatePickerWidgetState();
}

class _TransactionsdatePickerWidgetState
    extends State<TransactionsdatePickerWidget> {
  late TransactionsdatePickerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransactionsdatePickerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowCalendar(
      color: FlutterFlowTheme.of(context).primary,
      iconColor: FlutterFlowTheme.of(context).secondaryText,
      weekFormat: false,
      weekStartsMonday: false,
      rowHeight: 64.0,
      onChange: (DateTimeRange? newSelectedDate) {
        safeSetState(() => _model.calendarSelectedDay = newSelectedDate);
      },
      titleStyle: FlutterFlowTheme.of(context).headlineSmall.override(
            fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
            letterSpacing: 0.0,
            useGoogleFonts: GoogleFonts.asMap()
                .containsKey(FlutterFlowTheme.of(context).headlineSmallFamily),
          ),
      dayOfWeekStyle: FlutterFlowTheme.of(context).labelLarge.override(
            fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
            letterSpacing: 0.0,
            useGoogleFonts: GoogleFonts.asMap()
                .containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
          ),
      dateStyle: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
            letterSpacing: 0.0,
            useGoogleFonts: GoogleFonts.asMap()
                .containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
          ),
      selectedDateStyle: FlutterFlowTheme.of(context).titleSmall.override(
            fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
            letterSpacing: 0.0,
            useGoogleFonts: GoogleFonts.asMap()
                .containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
          ),
      inactiveDateStyle: FlutterFlowTheme.of(context).labelMedium.override(
            fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
            letterSpacing: 0.0,
            useGoogleFonts: GoogleFonts.asMap()
                .containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
          ),
      locale: FFLocalizations.of(context).languageCode,
    );
  }
}
