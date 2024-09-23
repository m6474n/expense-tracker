import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/material.dart';

class CustomPassField extends StatefulWidget {
  final String title;
  final bool label;
  final Widget? prefix;
  
  final TextEditingController controller;
  
  const CustomPassField({super.key, 
  
  required this.title,  this.label = false,  this.prefix, required this.controller});

  @override
  State<CustomPassField> createState() => _CustomPassFieldState();
}

class _CustomPassFieldState extends State<CustomPassField> {

bool isPassVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:  widget.controller,
      cursorColor: primaryColor,
      obscureText: isPassVisible,
      decoration: InputDecoration(
      
      
        prefixIcon: widget.prefix,
         suffixIcon: GestureDetector(
                        onTap: (){
                      setState(() {
                        isPassVisible = !isPassVisible;
                      });
                        },
                        child: Icon(isPassVisible ? Icons.visibility : Icons.visibility_off, color: primaryColor,)),
                    
        hintStyle: TextStyle(fontFamily: "Inter", fontSize: 14),
        hintText: "${widget.title}",
label: widget.label ? Text(widget.title) : null,
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
