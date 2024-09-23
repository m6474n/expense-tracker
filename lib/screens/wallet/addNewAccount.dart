import 'package:expense_tracker/components/customInputField.dart';
import 'package:expense_tracker/components/reusableCard.dart';
import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class AddNewAccount extends StatelessWidget {
   AddNewAccount({super.key});
List<String> bankList = ["HBL", "Alflah", 'Faysal', "Meezan", "Askari", "MCB"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        scrolledUnderElevation: 0,
        title: Text("Add new Account", style: TextStyle(fontFamily: "Inter")),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomInputField(
                validator: (v){
                          // v == null || v.isEmpty ? "Enter Name": null;
                          },
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
                decoration: BoxDecoration(color: bgColor, border: Border.all(color: borderColor), borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Featured Banks",
                        style: TextStyle(color: primaryColor, fontFamily: "Inter", fontSize: 16),
                      ),
                  
                      Row(children: [Expanded(child:  ReusableCard(
                            title: "MCB Bank ",
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
                          )),
                          SizedBox(width: 8,),
                          Expanded(child:  ReusableCard(
                            title: "Bank AlFalah ",
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: bgColor,
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      image: AssetImage('assets/imgs/Alflah.png'),
                                      fit: BoxFit.cover),
                                  border: Border.all(color: borderColor)),
                            ),
                          ))],)             ,   Padding(
                        padding: const EdgeInsets.symmetric(horizontal:4.0),
                        child: Row(children: [Expanded(child:  ReusableCard(
                              title: "Habib Bank Limited",
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: bgColor,
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                        image: AssetImage('assets/imgs/HBL.png'),
                                        fit: BoxFit.cover),
                                    border: Border.all(color: borderColor)),
                              ),
                            )),
                            SizedBox(width: 8,),
                            Expanded(child:  ReusableCard(
                              title: "Meezan Bank",
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: bgColor,
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                        image: AssetImage('assets/imgs/Meezan.png'),
                                        fit: BoxFit.cover),
                                    border: Border.all(color: borderColor)),
                              ),
                            ))],),
                      )             ,   Padding(
                        padding: const EdgeInsets.symmetric(horizontal:4.0),
                        child: Row(children: [Expanded(child:  ReusableCard(
                              title: "Askari Bank ",
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: bgColor,
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                        image: AssetImage('assets/imgs/Askari.png'),
                                        fit: BoxFit.cover),
                                    border: Border.all(color: borderColor)),
                              ),
                            )),
                            SizedBox(width: 8,),
                            Expanded(child:  ReusableCard(
                              title: "Faysal Bank ",
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: bgColor,
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                        image: AssetImage('assets/imgs/Faysal.png'),
                                        fit: BoxFit.cover),
                                    border: Border.all(color: borderColor)),
                              ),
                            )),
                            ],),
                      )  ,
                     
                               
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8,),
                Container(
                decoration: BoxDecoration(color: bgColor, border: Border.all(color: borderColor), borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "All Banks",
                        style: TextStyle(color: primaryColor, fontFamily: "Inter", fontSize: 16),
                      ),
                    ...List.generate(bankList.length, (index){
                      return ReusableCard(title: "${bankList[index]} Bank",
                      leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: bgColor,
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/imgs/${bankList[index]}.png'),
                                      fit: BoxFit.cover),
                                  border: Border.all(color: borderColor)),
                            ),
                      
                      );
                    })
                    
                    
                    
                    ])))
          
            ],
          ),
        ),
      ),
    );
  }
}
