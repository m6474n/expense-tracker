import 'package:expense_tracker/controllers/generalController.dart';
import 'package:expense_tracker/screens/Create%20New/Categories/addNewCategory.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: GeneralController(),
        builder: (cont) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Categories"),
              actions: [IconButton(onPressed: () {
                Get.to(AddNewCategory());
              }, icon: Icon(Icons.add))],
            ),
          );
        });
  }
}
