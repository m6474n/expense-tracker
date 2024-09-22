import 'package:expense_tracker/utility/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomPiChart extends StatefulWidget {
  const CustomPiChart({super.key});

  @override
  State<CustomPiChart> createState() => _CustomPiChartState();
}

class _CustomPiChartState extends State<CustomPiChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: PieChart(
        
        PieChartData(
          centerSpaceRadius: 60,
          
          sections: [
      
        PieChartSectionData(value: 40,color: chartGreen),
        PieChartSectionData(value: 10,color: chartRed),
        PieChartSectionData(value: 50,color: primaryColor.withOpacity(0.5))
      
      
      ])),
    );
  }
}