// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    Key? key,
    required this.textController,
    required this.classController,
    required this.validationFunction,
    required this.saveFunction,
    this.icon = CupertinoIcons.circle,
    this.obscureText = false
  }) : super(key: key);

  final TextEditingController textController;
  final GetxController classController;
  final Function validationFunction;
  final Function saveFunction;
  final IconData icon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      obscureText: obscureText,
      cursorColor: Colors.black,
      decoration: InputDecoration(
          label: Icon(icon),
          // labelText: label,
          // labelStyle: TextStyle(color: Colors.black),
          fillColor: Colors.transparent,
          focusColor: Colors.black,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.black))),
      validator: (val) => validationFunction(val),
      onSaved: (val) => saveFunction(val),
    );
  }
}