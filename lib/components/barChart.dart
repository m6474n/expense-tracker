import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSample extends StatelessWidget {
  final List<int> dataPoints;

  BarChartSample({required this.dataPoints});

  @override
  Widget build(BuildContext context) {
    List<BarChartGroupData> barGroups = dataPoints.asMap().entries.map((entry) {
      int index = entry.key;
      double value = entry.value.toDouble();
      return BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: value,
            color: Colors.blue,
            width: 16,
          ),
        ],
      );
    }).toList();

    return Scaffold(
      backgroundColor: Colors.white,
     
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceAround,
            maxY: dataPoints.reduce((a, b) => a > b ? a : b).toDouble() + 1,
            barGroups: barGroups,
            titlesData: FlTitlesData(
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 30,
                ),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 20,
                  getTitlesWidget: (value, meta) {
                    int index = value.toInt();
                    return Text(
                      index.toString(),
                      style: TextStyle(fontSize: 12),
                    );
                  },
                ),
              ),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              topTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
            ),
            borderData: FlBorderData(
              show: true,
              border: Border.all(color: Colors.grey, width: 1),
            ),
            gridData: FlGridData(show: true),
          ),
        ),
      ),
    );
  }
}


