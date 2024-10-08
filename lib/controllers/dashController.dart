import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expense_tracker/screens/home.dart';
import 'package:expense_tracker/screens/profile/profileScreen.dart';
import 'package:expense_tracker/screens/statistics/statScreen.dart';
import 'package:expense_tracker/screens/wallet/wallet.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DashController extends GetxController{
  final auth = FirebaseAuth.instance;
  final userDB = FirebaseFirestore.instance.collection('Users');


int selectedIndex = 0;

List<Widget> widgetList = [
  Home(),StatScreen(),Wallet(),ProfileScreen(),
];
  changeIndex (val){
    selectedIndex = val;
    update();
  }

}