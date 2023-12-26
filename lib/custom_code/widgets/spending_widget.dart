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

import 'package:fl_chart/fl_chart.dart';

class SpendingWidget extends StatefulWidget {
  const SpendingWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _SpendingWidgetState createState() => _SpendingWidgetState();
}

class _SpendingWidgetState extends State<SpendingWidget> {
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

  List<BarChartGroupData> _getBarGroups(List<Map<String, dynamic>> data) {
    return data.map((item) {
      final groupName = item['group_name'] ?? 'Unknown';
      final spending = (item['total_amount'] as num?)?.toDouble() ?? 0.0;

      return BarChartGroupData(
        x: groupName.hashCode,
        barsSpace: 6, // Adjust as needed
        barRods: [
          BarChartRodData(
            toY: spending,
            width: 5,
            gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.blueAccent
            ]), // Using gradient for colors
          ),
        ],
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height:
          widget.height ?? 300, // Set a default height or use widget's height
      child: FutureBuilder<List<Map<String, dynamic>>>(
        future: fetchSpendingData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.data == null || snapshot.data!.isEmpty) {
            return Center(child: Text('No data available'));
          } else {
            return _buildSpendingChart(snapshot.data!);
          }
        },
      ),
    );
  }

  Widget _buildSpendingChart(List<Map<String, dynamic>> data) {
    List<BarChartGroupData> barGroups = _getBarGroups(data);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'Top 5 Transaction Groups',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        BarChart(
          BarChartData(
            barGroups: barGroups,
            titlesData: FlTitlesData(
              topTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              show: true,
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    return Text('${meta.formattedValue}');
                  },
                ),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    return Text(
                      data.firstWhere(
                        (element) => element['group_name'].hashCode == value,
                        orElse: () => {'group_name': 'Unknown'},
                      )['group_name'],
                      style: TextStyle(
                          fontSize: 12), // Smaller font size for bottom titles
                    );
                  },
                ),
              ),
            ),
            borderData: FlBorderData(show: false),
            barTouchData: BarTouchData(
              touchCallback: (FlTouchEvent event, BarTouchResponse? response) {
                // Handle touch interactions
              },
            ),
          ),
          swapAnimationDuration: const Duration(milliseconds: 350),
        ),
      ],
    );
  }
}
