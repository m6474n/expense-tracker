import 'dart:math';

import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final String? title, subtitle;
  final Widget? icon;
  const CustomIconButton({super.key , this.icon, this.title, this.subtitle} );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          color: Colors.blueGrey.shade50,
          borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: icon,
        title: Text(
          title??"",
          style: TextStyle(fontFamily: "Inter thin", fontSize: 14),
        ),
        subtitle: Text(
          subtitle??'',
          style: TextStyle(fontFamily: "Inter bold", fontSize: 14),
        ),
      ),
    );
  }
}
