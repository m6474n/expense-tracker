import 'package:expense_tracker/components/customButton.dart';
import 'package:expense_tracker/components/customPassField.dart';
import 'package:expense_tracker/components/customInputField.dart';
import 'package:expense_tracker/controllers/authController.dart';
import 'package:expense_tracker/screens/auth/loginScreen.dart';
import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                  child: Form(
                    key: cont.registerFormKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(
                          'Create Account',
                          style:
                              TextStyle(fontFamily: "Inter bold", fontSize: 24),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 42.0),
                          child: Text(
                            'Fill your information below or register with your social media accounts to continue,',
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            padding:
                                EdgeInsets.symmetric(vertical: 8, horizontal: 2),
                            width: double.infinity,
                            child: Text(
                              "Name",
                              style: TextStyle(
                                fontFamily: "Inter",
                              ),
                              textAlign: TextAlign.start,
                            )),
                        CustomInputField(
                          validator: (v){
                       return   v == null || v.isEmpty ? "Enter Name": null;
                          },
                            title: "Enter Name", controller: cont.nameCont),
                        Container(
                            padding:
                                EdgeInsets.symmetric(vertical: 8, horizontal: 2),
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
                        return  v == null || v.isEmpty ? "Enter Email": null;
                          },
                            title: "Enter Email", controller: cont.emailCont),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                            padding:
                                EdgeInsets.symmetric(vertical: 8, horizontal: 2),
                            width: double.infinity,
                            child: Text(
                              "Password",
                              style: TextStyle(
                                fontFamily: "Inter",
                              ),
                              textAlign: TextAlign.start,
                            )),
                        CustomPassField(
                          validator: ( v){
                              return  v == null || v.isEmpty ? "Enter Password": v.length <6 ? "Password must be greater then 6 digit" : null;
                          },
                            title: "Enter Password", controller: cont.passCont),
                        Container(
                            padding:
                                EdgeInsets.symmetric(vertical: 8, horizontal: 2),
                            width: double.infinity,
                            child: Text(
                              "Confirm Password",
                              style: TextStyle(
                                fontFamily: "Inter",
                              ),
                              textAlign: TextAlign.start,
                            )),
                        CustomPassField(
                                     validator: (v){

                                                 return  v == null || v.isEmpty ? "Enter Password": v.length <6 ? "Password must be greater then 6 digit" : null;

                           },        title: "Confirm Pass",
                            controller: cont.confirmPassCont),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 14),
                          width: double.infinity,
                          child: Row(
                            children: [
                              Checkbox(
                                checkColor: bgColor,
                                activeColor:primaryColor,
                                // fillColor: WidgetStatePropertyAll(primaryColor),
                                value: cont.isChecked, onChanged: (e) {
                                cont.check(e);
                              }),
                              Text("Agree with Terms and Conditions.")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        CustomButton(onTap: () {
                          if(cont.registerFormKey.currentState!.validate()){
                           cont.register();
                          }
                        }, title: "Register"),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 18, horizontal: 40),
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
                                      'or continue with',
                                      style: TextStyle(
                                          fontFamily: "Inter", fontSize: 14),
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
                                child: SvgPicture.asset(
                                  'assets/imgs/google.svg',
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(500),
                                  border: Border.all(color: Colors.grey)),
                              child: Container(
                                height: 32,
                                width: 32,
                                child: SvgPicture.asset(
                                  'assets/imgs/github.svg',
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontFamily: 'Inter', color: textColor),
                                text: "Already have an account? ",
                                children: [
                              TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      cont.clearScreen();
                                      Get.to(LoginScreen());
                                    },
                                  text: "Login.",
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontFamily: 'Inter bold'))
                            ]))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
