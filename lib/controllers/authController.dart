import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expense_tracker/dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{
  final auth = FirebaseAuth.instance;
   final userDB = FirebaseFirestore.instance.collection('Users');
final emailCont = TextEditingController();
final nameCont = TextEditingController();
final passCont = TextEditingController();
final confirmPassCont = TextEditingController();
final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

bool isPassVisible = true;
bool isChecked = false;

check(v){
  isChecked = v;
  update();
}
  showPass(){
    isPassVisible = !isPassVisible;
    update();
  }



  loginWithEmail()async{
    try{
      EasyLoading.show(status: "Logging In ...");
        await auth.signInWithEmailAndPassword(email: emailCont.text, password: passCont.text).then((v){
          EasyLoading.dismiss();
          Get.offAll(Dasboard());
        });


    }catch(e){
      EasyLoading.showError(e.toString());
    }

  }
  register()async{
   try{
    EasyLoading.show(status: "Creting account...");
 auth.createUserWithEmailAndPassword(email: emailCont.text, password: passCont.text).then((v)async{
      await userDB.doc(v.user!.uid).set({
        'name': nameCont.text,
        'email': emailCont.text,        
      }).then((val){
        EasyLoading.dismiss();
      Get.offAll(Dasboard());
      });

    });

   }catch(e){
    EasyLoading.showError(e.toString());
   }


  }

clearScreen(){
  emailCont.clear();
  passCont.clear();
  nameCont.clear();
  confirmPassCont.clear();
  isChecked = false;
}



}