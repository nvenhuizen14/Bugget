import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'calendar_day_view_model.dart';
export 'calendar_day_view_model.dart';

class CalendarDayViewWidget extends StatefulWidget {
  const CalendarDayViewWidget({
    super.key,
    required this.selectedDate,
  });

  final DateTime? selectedDate;

  @override
  State<CalendarDayViewWidget> createState() => _CalendarDayViewWidgetState();
}

class _CalendarDayViewWidgetState extends State<CalendarDayViewWidget> {
  late CalendarDayViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarDayViewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [],
          ),
        ],
      ),
    );
  }
}
