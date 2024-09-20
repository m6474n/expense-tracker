import 'package:expense_tracker/components/barChart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class StatController extends GetxController{

AllStats(){
  return Column(children: [
    // SizedBox(height: 60,),
    BarChartSample()
  ],);
}

Income(){
   return Column(children: [],);
}


Expense(){
   return Column(children: [],);
}


}