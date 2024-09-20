import 'package:expense_tracker/services/splashServices.dart';
import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices services = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    services.isLogin();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/imgs/logo.png'),
              height: 120,
              width: 120,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "EXPENDI",
              style: TextStyle(
                  fontFamily: "Inter bold",
                  color: primaryColor,
                  fontSize: 24,
                  letterSpacing: 3),
            ),
            Text(
              "MANAGE YOUR EXPENSES",
              style: TextStyle(
                  fontFamily: "Inter ",
                  color: textColor,
                  fontSize: 12,
                  letterSpacing: 3),
            )
          ],
        ),
      ),
    );
  }
}
