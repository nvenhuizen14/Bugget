import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'transactionsdate_picker_model.dart';
export 'transactionsdate_picker_model.dart';

class TransactionsdatePickerWidget extends StatefulWidget {
  const TransactionsdatePickerWidget({super.key});

  @override
  _TransactionsdatePickerWidgetState createState() =>
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

    return FlutterFlowCalendar(
      color: FlutterFlowTheme.of(context).primary,
      iconColor: FlutterFlowTheme.of(context).secondaryText,
      weekFormat: false,
      weekStartsMonday: false,
      rowHeight: 64.0,
      onChange: (DateTimeRange? newSelectedDate) {
        setState(() => _model.calendarSelectedDay = newSelectedDate);
      },
      titleStyle: FlutterFlowTheme.of(context).headlineSmall,
      dayOfWeekStyle: FlutterFlowTheme.of(context).labelLarge,
      dateStyle: FlutterFlowTheme.of(context).bodyMedium,
      selectedDateStyle: FlutterFlowTheme.of(context).titleSmall,
      inactiveDateStyle: FlutterFlowTheme.of(context).labelMedium,
      locale: FFLocalizations.of(context).languageCode,
    );
  }
}
