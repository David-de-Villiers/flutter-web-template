// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ResponsiveNavBar extends GetResponsiveView<GetxController> implements PreferredSizeWidget{

  @override
  Size get preferredSize => Size(double.infinity, 56);

  @override
  Widget? builder() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Icon(Icons.circle, color: Colors.grey),
      actions: [Container(padding: EdgeInsets.only(right: 10.w), child: Icon(Icons.person, color: Colors.grey))],
      title: Text("Untitled", style: GoogleFonts.mulish(fontSize: 28, color: Colors.black)),
      centerTitle: true,
    );
  }
}