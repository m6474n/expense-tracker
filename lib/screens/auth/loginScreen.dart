import 'package:expense_tracker/components/customButton.dart';
import 'package:expense_tracker/components/customSearchField.dart';
import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Expendi',
                  style: TextStyle(fontFamily: "Inter bold", fontSize: 24),
                ),
                Text(
                  'Simplify Your Expense',
                  style: TextStyle(fontFamily: "Inter", fontSize: 14),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sign In',
                  style: TextStyle(
                      fontFamily: "Inter bold",
                      fontSize: 20,
                      color: primaryColor),
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
                    title: "Email", controller: TextEditingController()),
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
                CustomInputField(
                  title: "Password",
                  controller: TextEditingController(),
                  suffix: GestureDetector(child: Icon(Icons.visibility)),
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
                  height: 20,
                ),
                CustomButton(onTap: () {}, title: "Sign In"),
                SizedBox(height: 30,),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
                  child: Row(children: [Expanded(child: Divider(thickness: 1 , color: primaryColor,)),Expanded(child: Text('or sign in with', style: TextStyle(fontFamily: "Inter", fontSize: 14),textAlign: TextAlign.center,)),Expanded(child: Divider(thickness: 1 , color: primaryColor,)), ],))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
