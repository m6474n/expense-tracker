import 'package:expense_tracker/components/reusableCard.dart';
import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class GoalCard extends StatelessWidget {
  final String title;
  final int percent, goal;
  const GoalCard({super.key, required this.title, required this.percent, required this.goal});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
                  trailing: Text("${percent}%", style: TextStyle(fontFamily: "Inter"),),
                  leading: Container(
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: secondaryColor,
                    ),
                    child: Center(
                        child: Icon(
                      LineIcons.shoppingBasket,
                      color: primaryColor,
                      size: 32,
                    )),
                  ),
                  title: title,
                  subTitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [LinearProgressIndicator(
                    value: percent / 100,
                    backgroundColor: secondaryColor,
                    color: primaryColor,
                  ), SizedBox(height: 4,),Text("${percent}% / \$${goal}", style: TextStyle(fontFamily: "Inter", fontSize: 12),),],)
                );
  }
}