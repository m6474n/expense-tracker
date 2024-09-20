import 'dart:async';
import 'package:expense_tracker/dashboard.dart';
import 'package:get/get.dart';
class SplashServices{

  isLogin(){

    Timer(Duration(seconds: 3), (){
      Get.offAll(Dasboard());
    });

  }




}