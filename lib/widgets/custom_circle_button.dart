// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        elevation: 0,
        fillColor: Colors.white,
        child: Icon(icon, size: 40, color: Colors.black),
        padding: EdgeInsets.all(16),
        shape: CircleBorder(
            side: BorderSide(
                color: Colors.black,
                width: 3
            )
        ),
        hoverElevation: 12,
        hoverColor: Colors.white24,
        // highlightColor: Colors.white,
        onPressed: () {}
    );
  }
}