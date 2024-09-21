import 'dart:math';

import 'package:expense_tracker/components/barChart.dart';
import 'package:expense_tracker/components/goalCard.dart';
import 'package:expense_tracker/components/lineChart.dart';
import 'package:expense_tracker/components/customAppbar.dart';
import 'package:expense_tracker/components/customIconButton.dart';
import 'package:expense_tracker/components/reusableCard.dart';
import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatelessWidget {
  Home({super.key});
  List<int> dataPoints = [5, 3, 8, 6, 7, 4, 5];
List<String> goalsList = ["Shopping", "Food", "Entertainment", "Online Transactions"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // app bar
                const CustomAppBar(),
                // main body
                SizedBox(
                  height: 18,
                ),
                Text(
                  "Total Balance",
                  style: TextStyle(fontFamily: "Inter "),
                ),
                Text(
                  "\$${Random.secure().nextInt(999999)}",
                  style: TextStyle(
                      fontFamily: "Inter black",
                      fontSize: 32,
                      color: textColor),
                ),
                // Buttons
                SizedBox(
                  height: 18,
                ),
                Row(
                  children: [
                    Expanded(
                        child: CustomIconButton(
                      icon: CircleAvatar(
                        backgroundColor: secondaryProfit,
                        radius: 30,
                        child: Transform.rotate(
                          angle: 45 * pi / 180,
                          child: Icon(
                            LineIcons.arrowUp,
                            color: primaryProfit,
                          ),
                        ),
                      ),
                      title: "Income",
                      subtitle: "\$50,000",
                    )),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: CustomIconButton(
                      icon: CircleAvatar(
                        backgroundColor: secondaryLoss,
                        radius: 30,
                        child: Transform.rotate(
                            angle: -45 * pi / 180,
                            child: const Icon(
                              LineIcons.arrowDown,
                              color: primaryLoss,
                            )),
                      ),
                      title: "Expence",
                      subtitle: "\$10,000",
                    ))
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                CustomLineChart(),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "Goals",
                  style: TextStyle(fontFamily: "Inter bold",fontSize: 18),
                ),
                SizedBox(
                  height: 8,
                ),
              ...List.generate(goalsList.length, (index){
               var percent =   Random.secure().nextInt(100);
                return   GoalCard(title: goalsList[index], percent: percent, goal: Random.secure().nextInt(10000),);
              })
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
