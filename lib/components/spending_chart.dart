import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class SpendingChart extends StatelessWidget {
  final List<Map<String, dynamic>> data;

  SpendingChart({required this.data});

  List<BarChartGroupData> _getBarGroups() {
    return data.map((item) {
      final groupName = item['group_name'] ?? 'Unknown';
      final spending = (item['total_amount'] as num?)?.toDouble() ?? 0.0;

      return BarChartGroupData(
        x: groupName.hashCode,
        barsSpace: 100, // Adjust as needed
        barRods: [
          BarChartRodData(
            toY: spending,
            width: 15,
            gradient: LinearGradient(colors: [const Color.fromARGB(255, 12, 25, 36), Color.fromARGB(255, 10, 141, 80)]), // Using gradient for colors
          ),
        ],
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<BarChartGroupData> barGroups = _getBarGroups();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'Top 5 Transaction Groups',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Flexible( // Wrap BarChart in Flexible
          child: BarChart(
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
                        style: TextStyle(fontSize: 9), // Smaller font size for bottom titles
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
        ),
      ],
    );
  }
}