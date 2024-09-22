import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String title;
  final bool label;
  final Widget? prefix,suffix;
  final TextEditingController controller;
  
  const CustomInputField({super.key, required this.title,  this.label = false,  this.prefix,  this.suffix, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:  controller,
      cursorColor: primaryColor,
      decoration: InputDecoration(
      
        prefixIcon: prefix,
        suffixIcon: suffix,
        hintStyle: TextStyle(fontFamily: "Inter", fontSize: 14),
        hintText: "$title",
label: label ? Text(title) : null,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                width: 1, color: const Color.fromARGB(255, 210, 210, 210))),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                width: 1, color: const Color.fromARGB(255, 210, 210, 210))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(width: 1, color: primaryColor)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(width: 1, color: primaryLoss)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(width: 1, color: borderColor)),
      ),
    );
  }
}
