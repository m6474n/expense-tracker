import 'package:expense_tracker/components/customButton.dart';
import 'package:expense_tracker/components/reusableCard.dart';
import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            color: secondaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 80),
                Container(
                  height: width * 0.25,
                  width: width * 0.25,
                  decoration: BoxDecoration(
                      color: bgColor,
                      border: Border.all(
                        width: 1,
                        color: primaryColor,
                      ),
                      image: DecorationImage(image: AssetImage('assets/imgs/profile-pic.png')),
                      borderRadius: BorderRadius.circular(500)),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Muhammad Mohsin",
                  style: TextStyle(
                      fontFamily: "Inter bold",
                      color: textColor,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Edit Profile",
                  style: TextStyle(
                      fontFamily: "Inter ",
                      color: primaryColor,
                      fontSize: 14),
                )
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                width: width,
                height: height * 0.57,
                decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Profile Settings",
                      style:
                          TextStyle(fontFamily: "Inter bold", fontSize: 16),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.language,
                        size: 26,
                        color: primaryColor,
                      ),
                      title: Text("Language",
                          style: TextStyle(fontFamily: "Inter")),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 16,
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.category_outlined,
                        size: 26,
                        color: primaryColor,
                      ),
                      title: Text("Categories",
                          style: TextStyle(fontFamily: "Inter")),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 16,
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.currency_exchange,
                        size: 22,
                        color: primaryColor,
                      ),
                      title: Text("Currency",
                          style: TextStyle(fontFamily: "Inter")),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 16,
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.notifications_none,
                        size: 26,
                        color: primaryColor,
                      ),
                      title: Text("Notifications",
                          style: TextStyle(fontFamily: "Inter")),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 16,
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.settings,
                        size: 26,
                        color: primaryColor,
                      ),
                      title: Text("Settings",
                          style: TextStyle(fontFamily: "Inter")),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 16,
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.help_outline_sharp,
                        size: 26,
                        color: primaryColor,
                      ),
                      title: Text("FAQ & Support",
                          style: TextStyle(fontFamily: "Inter")),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 16,
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(18.0),
        child: CustomButton(onTap: () {}, title: "Logout"),
      ),
    );
  }
}
