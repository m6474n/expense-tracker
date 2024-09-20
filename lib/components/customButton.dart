import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color bgColor, textColor;
  const CustomButton({super.key, required this.onTap, required this.title, this.bgColor = primaryColor, this.textColor =Colors.white});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

onTap: onTap,      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: bgColor,
      borderRadius: BorderRadius.circular(12)
        ),
        child: Center(child: Text(title, style: TextStyle(color: textColor, fontFamily: "Inter", fontSize: 16),),),
      ),
    );
  }
}