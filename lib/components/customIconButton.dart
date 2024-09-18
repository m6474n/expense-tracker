import 'dart:math';

import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final String? title, subtitle;
  final Widget? icon;
  const CustomIconButton({super.key , this.icon, this.title, this.subtitle} );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: borderColor),
          borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: icon,
        title: Text(
          title??"",
          style: const TextStyle(fontFamily: "Inter thin", fontSize: 14),
        ),
        subtitle: Text(
          subtitle??'',
          style: const TextStyle(fontFamily: "Inter bold", fontSize: 14),
        ),
      ),
    );
  }
}
