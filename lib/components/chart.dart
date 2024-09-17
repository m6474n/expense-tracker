import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomChart extends StatefulWidget {
  const CustomChart({super.key});

  @override
  State<CustomChart> createState() => _CustomChartState();
}

class _CustomChartState extends State<CustomChart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Expence Chart",
          style: TextStyle(fontFamily: "Inter"),
        ),
        SizedBox(height: 12),
        Container(
          height: 300,
          width: double.infinity,
          child: LineChart(
              curve: Curves.linear,
              LineChartData(
                  minX: 0,
                  maxX: 11,
                  minY: 0,
                  maxY: 50,
                  backgroundColor: Colors.blue.shade50,
                  titlesData: FlTitlesData(
                      leftTitles:
                      
                          AxisTitles(
                            sideTitles: SideTitles(
                             
reservedSize: 40,
                           
                              showTitles: true)),
                      topTitles:
                          AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      bottomTitles:
                          AxisTitles(sideTitles: SideTitles(showTitles: true, reservedSize: 40,)),
                     
                      rightTitles:
                          AxisTitles(sideTitles: SideTitles(showTitles: false,)),
                    
                          ),
                  borderData: FlBorderData(border: Border.all(width: 0)),
                  gridData: FlGridData(
                      drawHorizontalLine: false, drawVerticalLine: false),
                  lineBarsData: [
                    LineChartBarData(
                        isCurved: true,
                        dotData: FlDotData(show: false),
                        spots: [
                          FlSpot(0, 0),
                          FlSpot(1, 1.6),
                          FlSpot(2, 2),
                          FlSpot(3, 3.5),
                          FlSpot(4.3, 4),
                          FlSpot(5, 2.5),
                          FlSpot(6.2, 3),
                          FlSpot(7, 4),
                          FlSpot(8, 6),
                          FlSpot(9, 8),
                        ])
                  ])),
        )
      ],
    );
  }
}
