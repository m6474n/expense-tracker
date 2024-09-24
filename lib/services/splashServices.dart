import 'dart:async';
import 'package:expense_tracker/dashboard.dart';
import 'package:expense_tracker/screens/auth/loginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
class SplashServices{
final user = FirebaseAuth.instance.currentUser!;
  isLogin(){
    if(user !=null){
 Timer(Duration(seconds: 3), (){
      Get.offAll(Dasboard());
    });
    }else{
       Timer(Duration(seconds: 3), (){
      Get.offAll(LoginScreen());
    });
    }
   

  }




}