import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(leading: CircleAvatar(radius:30,backgroundColor: borderColor,child: Icon(Icons.person),),
    title: Text("Hello!", style: TextStyle(fontFamily: 'Inter bold', fontSize: 18),),
    subtitle: Text("Muhammad Mohsin",style: TextStyle(fontFamily: 'Inter', fontSize: 14, letterSpacing: 2),),
    trailing: Icon(Icons.notifications_sharp),);
  }
}