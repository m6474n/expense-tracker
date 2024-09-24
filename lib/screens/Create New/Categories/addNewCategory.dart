import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expense_tracker/components/customInputField.dart';
import 'package:expense_tracker/components/reusableCard.dart';
import 'package:expense_tracker/controllers/categoryController.dart';
import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:line_icons/line_icons.dart';

class AddNewCategory extends StatelessWidget {
  AddNewCategory({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GetBuilder<CategoryController>(
      init: CategoryController(),
      builder: (cont) {
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
                    validator: (v) {
                      // v == null || v.isEmpty ? "Enter Name": null;
                    },
                    title: 'Search Banks',
                    controller: cont.searchController,
                    prefix: Icon(
                      LineIcons.search,
                      color: primaryColor,
                    ),
                   
                  ),
                  SizedBox(height: 8),
                  SizedBox(height: 8),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Featured Categories",
                          style: TextStyle(
                            color: primaryColor,
                            fontFamily: "Inter",
                            fontSize: 16,
                          ),
                        ),
                        Container(
                          height: height * 0.4,
                          child: StreamBuilder(
                            stream: FirebaseFirestore.instance
                                .collection("Categories")
                                .snapshots(),
                            builder: (context, snapshot) {
                              if (!snapshot.hasData) {
                                return Center(child: CircularProgressIndicator());
                              }

                              final filteredDocs = snapshot.data!.docs.where((doc) {
                                final name = doc['category_name']
                                    .toString()
                                    .toLowerCase();
                                final searchText = cont.searchedText.toLowerCase();
                                return name.contains(searchText);
                              }).toList();

                              return ListView.builder(
                                itemCount: filteredDocs.length,
                                itemBuilder: (context, index) {
                                  return ReusableCard(
                                    leading: Container(
                                      child: Center(
                                        child: Image.network(
                                          filteredDocs[index]['icon'],
                                        ),
                                      ),
                                    ),
                                    title: filteredDocs[index]['category_name'],
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
