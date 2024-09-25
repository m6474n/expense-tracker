import 'dart:math';

import 'package:expense_tracker/components/barChart.dart';
import 'package:expense_tracker/components/statCard.dart';
import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class AllStatScreen extends StatelessWidget {
  const AllStatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 60,),
            BarChartSample(),
            // ReusableCard(leading: ,)
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Transactions",
                    style: TextStyle(fontFamily: "Inter bold", fontSize: 16),
                  ),
                  Text(
                    "see all",
                    style: TextStyle(
                        fontFamily: "Inter", color: primaryColor, fontSize: 14),
                  ),
                ],
              ),
            ),
            Expanded(child: ListView.builder(itemBuilder: (context, index) {
              return StatCard(
                title: "${index % 2 == 0 ? "Income" : "Expense"}",
                description: "Some Random Description.",
                time: Random.secure().nextInt(12).toString(),
                money: Random.secure().nextInt(10000).toString(),
                leading: Container(
                  width: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: index % 2 == 0 ? secondaryProfit : secondaryLoss,
                  ),
                  child: Center(
                      child: Icon(
                    index % 2 == 0 ? Icons.arrow_upward : Icons.arrow_downward,
                    color: index % 2 == 0 ? primaryProfit : primaryLoss,
                    size: 32,
                  )),
                ),
              );
            }))
          ],
        ),
      ),
    );
  }
}
