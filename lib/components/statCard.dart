import 'package:expense_tracker/components/reusableCard.dart';
import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class StatCard extends StatelessWidget {
  final String title, description, time, money;
  final Widget? leading;
 
  const StatCard({super.key, required this.title, required this.description, required this.time, 
  required this.money, this.leading});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
                  trailing: Column(
                    children: [
                      Text("${ title == "Expense"? "-": ""} ${money}\$", style: TextStyle(fontFamily: "Inter bold", color: title == "Expense" ? primaryLoss : primaryProfit, fontSize: 14),),
                      SizedBox(height: 14),
                      Text("${time}:00 AM", style: TextStyle(fontFamily: "Inter"),),
                    ],
                  ),
                  leading: leading,
                  title: title,
                  subTitle:Text("${description}", style: TextStyle(fontFamily: "Inter", fontSize: 12),)
                );
  }
}

