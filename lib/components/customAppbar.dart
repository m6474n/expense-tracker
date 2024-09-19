import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // return const ListTile(
    //   leading: CircleAvatar(
    //     radius: 30,
    //     backgroundColor: secondaryColor,
    //     child: Icon(
    //       Icons.person,
    //       color: primaryColor,
    //     ),
    //   ),
    //   title: Text(
    //     "Hello!",
    //     style: TextStyle(
    //         fontFamily: 'Inter bold', fontSize: 18, color: primaryColor),
    //   ),
    //   subtitle: Text(
    //     "Muhammad Mohsin",
    //     style: TextStyle(fontFamily: 'Inter', fontSize: 14, letterSpacing: 2),
    //   ),
    //   trailing: Icon(
    //     Icons.notifications_sharp,
    //     color: primaryColor,
    //   ),
    // );
    return Row(
      children: [
        Expanded(
          flex: 3,
            child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: secondaryColor,
              child: Icon(
                Icons.person,
                color: primaryColor,
              ),
            ),
            SizedBox(width: 8,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello!",
                  style: TextStyle(
                      fontFamily: 'Inter bold',
                      fontSize: 18,
                      color: primaryColor),
                ),
                Text(
                  "Muhammad Mohsin",
                  style: TextStyle(
                      fontFamily: 'Inter', fontSize: 14, letterSpacing: 2),
                ),
              ],
            )
          ],
        )),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [LineIcon.bell(color: primaryColor,size: 26,)],))
      ],
    );
  }
}
