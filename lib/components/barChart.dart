import 'dart:math';

import 'package:expense_tracker/utility/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSample extends StatelessWidget {
  Color getLineTooltipColor(FlSpot spot) {
    // Customize the color based on the spot or other conditions
    return primaryColor; // Example: return red color for all tooltips
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: borderColor),
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.all(18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Overall Stats"),
          SizedBox(height: 30),
          Container(
            height: 200,
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                barTouchData: BarTouchData(
                    touchTooltipData: BarTouchTooltipData(getTooltipColor: (a) {
                  return secondaryColor;
                })),
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: true, reservedSize: 38),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false, reservedSize: 38),
                  ),
                ),
                borderData: FlBorderData(show: false),
                barGroups: List.generate(8, (index) {
                  return BarChartGroupData(x: 0, barRods: [
                    BarChartRodData(
                        toY: Random.secure().nextInt(100).toDouble(),
                        color: const Color.fromARGB(166, 106, 224, 118),
                        width: 20,
                        borderRadius: BorderRadius.circular(1)),
                    BarChartRodData(
                        toY: Random.secure().nextInt(100).toDouble(),
                        color: const Color.fromARGB(128, 236, 34, 54),
                        width: 20,
                        borderRadius:
                            BorderRadius.circular(1)), // Comparison value
                  ]);
                }),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, top: 20),
            child: Row(
              children: [
                Row(children: [Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        color: primaryProfit,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  SizedBox(width: 12,),
                  Text('Income', style:TextStyle(fontFamily: "Inter", fontSize: 12, color: textColor, letterSpacing: 2),),
            ],),
            SizedBox(width: 35,),
             Row(children: [Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        color: primaryLoss,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  SizedBox(width: 12,),
                  Text('Expense', style:TextStyle(fontFamily: "Inter", fontSize: 12, color: textColor, letterSpacing: 2),),
            ],)
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
