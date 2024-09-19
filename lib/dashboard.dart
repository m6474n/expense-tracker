import 'package:expense_tracker/components/dashController.dart';
import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class Dasboard extends StatelessWidget {
   Dasboard({super.key});

  @override
  Widget build(BuildContext context) {
    
    return GetBuilder(
      init: DashController(),
      builder: (cont) {
        return Scaffold(

  body: Center(
        child: cont.widgetList.elementAt(cont.selectedIndex),
      ),

          backgroundColor: bgColor,
            bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          
        ),
        child:
      SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                child: GNav(
                
                  rippleColor: secondaryColor,
                  hoverColor: secondaryColor,
                  gap: 8,
                  activeColor: bgColor,
                  
                  iconSize: 24,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  duration: Duration(milliseconds: 400),
                  tabActiveBorder: Border.all(color: primaryColor),
                  tabBackgroundColor: primaryColor,
                  color: Colors.black,
                  tabs: [
                    GButton(
                      icon: LineIcons.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: LineIcons.barChartAlt,
                      text: 'Stats',
                    ),
                    GButton(
                      icon: LineIcons.wallet,
                      text: 'Wallet',
                    ),
                    GButton(
                      icon: LineIcons.user,
                      text: 'Profile',
                    ),
                  ],
                  selectedIndex: cont.selectedIndex,
                  onTabChange: (index) {
                   cont.changeIndex(index);
                  },
                ),
              ),
            ),
            ));
      }
    );
  }
}