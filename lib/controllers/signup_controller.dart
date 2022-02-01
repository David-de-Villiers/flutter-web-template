import 'dart:developer';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String email = "";
  String password = "";
  String emailLabel = "e-mail";
  String passwordLabel = "password";

  void submitCredentials() {
    final form = formKey.currentState;
    if (form != null && form.validate()) {
      form.save();
      register();
    }
  }

  void register() {
    // Complete Firebase Registration
    Get.snackbar(
      "Alert",
      "Registration Successful",
      snackPosition: SnackPosition.BOTTOM,
      borderRadius: 0,
      borderColor: Colors.black,
      borderWidth: 2,
      // leftBarIndicatorColor: Colors.green,
      backgroundColor: Colors.white
    );
  }

  String? emailValidation(String? val) => !EmailValidator.validate(val!, true) ? "Invalid e-mail" : null;
  String emailSave(String? val) => email = val!;

  String? passwordValidation(String? val) => !(val != null && val.length > 6) ? "Your password should be 6 characters or longer" : null;
  String passwordSave(String? val) => password = val!;
}