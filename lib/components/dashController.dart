import 'package:expense_tracker/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DashController extends GetxController{
int selectedIndex = 0;

List<Widget> widgetList = [
  Home(),Text("Stats"),Text("Wallet"),Text("Profile"),
];
  changeIndex (val){
    selectedIndex = val;
    update();
  }

}