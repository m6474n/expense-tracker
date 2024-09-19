import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget? leading, subTitle, trailing;
  final String? title; 
  const ReusableCard({super.key, this.leading, this.subTitle, this.trailing, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      
      decoration: BoxDecoration(border: Border.all(color: borderColor), borderRadius: BorderRadius.circular(12)),
      child: ListTile(leading: leading, title: Text(title??""),subtitle: subTitle, trailing: trailing,));
  }
}