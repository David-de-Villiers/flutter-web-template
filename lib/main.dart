// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_template/constants/style.dart';
import 'package:responsive_template/screens/homepage.dart';
import 'package:responsive_template/screens/navigation_page.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        // initialRoute: "/",
        // getPages: [
        //   GetPage(name: "/", page: () => HomePage())
        // ],
        home: NavigationPage(),
        debugShowCheckedModeBanner: false,
        theme: theme,
      );
    });
  }
}

