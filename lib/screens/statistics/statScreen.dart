import 'package:expense_tracker/controllers/statController.dart';
import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class StatScreen extends StatelessWidget {
  const StatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(backgroundColor: bgColor,title: Text("Statistics"),bottom: TabBar(
          labelStyle: TextStyle(fontFamily: "Inter"),
          indicatorColor: primaryColor,
        labelColor: primaryColor,

                tabs: [
                  Tab(text: 'All', ),
                  Tab(text: 'Income'),
                  Tab(text: 'Expense'),
                ],
              ),),
        body: GetBuilder(
          init: StatController(),
          builder: (cont) {
            return TabBarView(
                  children: [
                   cont.AllStats(),
                   cont.Income(),
                   cont.Expense(),
                  
              
                  ],
                );
          }
        ),
          
        
      ),
    );
  }
}