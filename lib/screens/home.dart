import 'dart:math';

import 'package:expense_tracker/components/barChart.dart';
import 'package:expense_tracker/components/lineChart.dart';
import 'package:expense_tracker/components/customAppbar.dart';
import 'package:expense_tracker/components/customIconButton.dart';
import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
   Home({super.key});
  List<int> dataPoints = [5, 3, 8, 6, 7, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // app bar
                const CustomAppBar(),
                // main body
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start
                    ,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const ListTile(
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
                      const Expanded(
                            child: CustomIconButton(icon: CircleAvatar(
                              backgroundColor: borderColor,
                              radius: 30,
                              child: Icon(Icons.arrow_outward_sharp, ),
                            ),title: "Income",subtitle: "\$50,000",) ),
                        const SizedBox(width: 8,),
                          Expanded(
                            child: CustomIconButton(icon: CircleAvatar(
                              backgroundColor: borderColor,
                              radius: 30,
                              child: Transform.rotate(
                                angle: 90 *pi/180,
                                child: const Icon(Icons.arrow_outward_sharp,)),
                            ),title: "Expence",subtitle: "\$10,000",) )
                      ],
                    ),
                  ),
                  // const Padding(
                  //   padding: EdgeInsets.all(12.0),
                  //   child: CustomLineChart(),
                  // ),
                   Container(
                    height: 300,
                    child: BarChartSample(dataPoints: dataPoints))
                  ],),
                )
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
