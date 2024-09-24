import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  String searchedText = "";

  @override
  void onInit() {
    // TODO: implement onInit
    searchController.addListener(() {
      searchedText = searchController.text;
      update();
      print(searchedText);
    });

    super.onInit();
  }
}
