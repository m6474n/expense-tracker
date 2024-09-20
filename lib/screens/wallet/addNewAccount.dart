import 'package:expense_tracker/components/customSearchField.dart';
import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class AddNewAccount extends StatelessWidget {
  const AddNewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add new Account", style: TextStyle(fontFamily: "Inter")),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Column(
          children: [
            CustomInputField(
              title: 'Search Banks',
              controller: TextEditingController(),
              prefix: Icon(
                LineIcons.search,
                color: primaryColor,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              decoration: BoxDecoration(color: bgColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Featured Accounts",
                    style: TextStyle(color: primaryColor),
                  ),
                  // GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
