import 'dart:math';

import 'package:expense_tracker/components/chart.dart';
import 'package:expense_tracker/components/customAppbar.dart';
import 'package:expense_tracker/components/customIconButton.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // app bar
              CustomAppBar(),
              // main body
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start
                  ,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   ListTile(
                  title: Text("Total Balance"),
                  subtitle: Text(
                    "\$244,500",
                    style: TextStyle(fontFamily: "Inter black", fontSize: 32),
                  ),
                ),
                // Buttons
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: [
                    Expanded(
                          child: CustomIconButton(icon: CircleAvatar(
                            radius: 30,
                            child: Icon(Icons.arrow_outward_sharp),
                          ),title: "Income",subtitle: "\$50,000",) ),
                      SizedBox(width: 8,),
                        Expanded(
                          child: CustomIconButton(icon: CircleAvatar(
                            radius: 30,
                            child: Transform.rotate(
                              angle: 90 *pi/180,
                              child: Icon(Icons.arrow_outward_sharp)),
                          ),title: "Expence",subtitle: "\$10,000",) )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: CustomChart(),
                ),
                ],),
              )
             
            ],
          ),
        ),
      ),
    );
  }
}
