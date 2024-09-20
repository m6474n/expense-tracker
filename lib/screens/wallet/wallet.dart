import 'dart:math';

import 'package:expense_tracker/components/customButton.dart';
import 'package:expense_tracker/components/reusableCard.dart';
import 'package:expense_tracker/screens/wallet/addNewAccount.dart';
import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(color: primaryColor),
          ),
          Positioned(
              top: height * 0.11,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "\$ ${Random.secure().nextInt(999999)}",
                      style: TextStyle(
                          fontFamily: "Inter black",
                          fontSize: 42,
                          color: bgColor),
                    ),
                    Text(
                      "Total Balance",
                      style: TextStyle(
                          fontFamily: "Inter",
                          letterSpacing: 3,
                          color: bgColor),
                    ),
                  ],
                ),
              )),
          Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                height: height * 0.66,
                width: width,
                decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(34),
                        topRight: Radius.circular(34))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Wallets",
                      style: TextStyle(fontFamily: "Inter bold", fontSize: 16),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ...List.generate(3, (index) {
                      return ReusableCard(
                        title: "Wallet $index",
                        subTitle: Text("\$${Random.secure().nextInt(50000)}"),
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: bgColor,
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: AssetImage('assets/imgs/MCB.png'),
                                  fit: BoxFit.cover),
                              border: Border.all(color: borderColor)),
                        ),
                      );
                    })
                  ],
                ),
              ))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(18.0),
        child: CustomButton(
          title: 'Add new Account',
          onTap: () {
            Get.to(()=> AddNewAccount());
          },
        ),
      ),
    );
  }
}
