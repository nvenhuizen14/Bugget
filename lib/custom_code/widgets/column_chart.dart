// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:syncfusion_flutter_charts/charts.dart';

class ColumnChart extends StatefulWidget {
  const ColumnChart({
    super.key,
    this.width,
    this.height,
    required this.chartData,
    this.chartTitle,
  });

  final double? width;
  final double? height;
  final List<ChartDataStruct> chartData;
  final String? chartTitle;

  @override
  State<ColumnChart> createState() => _ColumnChartState();
}

class _ColumnChartState extends State<ColumnChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SfCartesianChart(
            title: ChartTitle(text: widget.chartTitle ?? ''),
            primaryXAxis: CategoryAxis(),
            primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
            tooltipBehavior: TooltipBehavior(enable: true),
            enableSideBySideSeriesPlacement: false,
            series: <CartesianSeries<ChartDataStruct, String>>[
          ColumnSeries<ChartDataStruct, String>(
              dataSource: widget.chartData,
              xValueMapper: (ChartDataStruct data, _) => data.xTitle,
              yValueMapper: (ChartDataStruct data, _) => data.yValue1,
              name: 'Gold',
              color: Color.fromRGBO(8, 142, 255, 1)),
          ColumnSeries<ChartDataStruct, String>(
              dataSource: widget.chartData,
              xValueMapper: (ChartDataStruct data, _) => data.xTitle,
              yValueMapper: (ChartDataStruct data, _) => data.yValue1,
              name: 'Silver',
              color: Color.fromARGB(255, 43, 1, 255)),
        ]));
  }
}
