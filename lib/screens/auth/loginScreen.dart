import 'package:expense_tracker/components/customButton.dart';
import 'package:expense_tracker/components/customPassField.dart';
import 'package:expense_tracker/components/customInputField.dart';
import 'package:expense_tracker/controllers/authController.dart';
import 'package:expense_tracker/screens/auth/registerScreen.dart';
import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GetBuilder(
      init: AuthController(),
      builder: (cont) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: height*0.1,)
        ,                Text(
                      'Expendi',
                      style: TextStyle(fontFamily: "Inter bold", fontSize: 24),
                    ),
                    Text(
                      'Simplify Your Expense',
                      style: TextStyle(fontFamily: "Inter", fontSize: 14, ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 34.0),
                      child: Text(
                    
                        'Enter your creddentials to continue to your account.',
                    textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 12,
                            color: textColor),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 2),
                        width: double.infinity,
                        child: Text(
                          "Email",
                          style: TextStyle(
                            fontFamily: "Inter",
                          ),
                          textAlign: TextAlign.start,
                        )),
                    CustomInputField(
                      validator: (v){
                          v == null || v.isEmpty ? "Enter Email": null;
                          },
                        title: "Email", controller:cont.emailCont ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 2),
                        width: double.infinity,
                        child: Text(
                          "Password",
                          style: TextStyle(
                            fontFamily: "Inter",
                          ),
                          textAlign: TextAlign.start,
                        )),
                    CustomPassField(
                      title: "Password",
                      controller: cont.passCont,
                    
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 14),
                        width: double.infinity,
                        child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              'forget password?',
                              textAlign: TextAlign.end,
                              style: TextStyle(color: primaryColor),
                            ))),
                    SizedBox(
                      height: 12,
                    ),
                    CustomButton(onTap: () {
 if(cont.loginFormKey.currentState!.validate()){
                            print("object");
                          }

                    }, title: "Sign In"),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Divider(
                                  thickness: 1,
                                  color: Colors.grey,
                                )),
                            Expanded(
                                flex: 3,
                                child: Text(
                                  'or sign in with',
                                  style: TextStyle(fontFamily: "Inter", fontSize: 14),
                                  textAlign: TextAlign.center,
                                )),
                            Expanded(
                                flex: 2,
                                child: Divider(
                                  thickness: 1,
                                  color: Colors.grey,
                                )),
                          ],
                        )),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(500),
                              border: Border.all(color: Colors.grey)),
                          child: Container(
                            height: 30,
                            width: 30,
                            child: SvgPicture.asset('assets/imgs/google.svg', ),
                            
                          ),),
                          SizedBox(width: 10,),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(500),
                              border: Border.all(color: Colors.grey)),
                          child: Container(
                            height: 32,
                            width: 32,
                            child: SvgPicture.asset('assets/imgs/github.svg', ),
                            
                          ),
                        )
                      ],
                
                    ),
                    SizedBox(height: 16,),
                     RichText(text: TextSpan(
                      style:TextStyle(fontFamily: 'Inter',color: textColor) 
                      ,
                      text: "Don't have an account? ",children: [TextSpan(
                        recognizer:TapGestureRecognizer()..onTap =(){
                          cont.clearScreen();
                          Get.to(RegisterScreen());
                        } ,
                        text: "Sign Up.",style: TextStyle(color: primaryColor,fontFamily: 'Inter bold'))]))
                  
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
