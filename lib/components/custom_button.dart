// ignore_for_file: prefer_const_constructors

import 'dart:core';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    this.function,
    this.isUpperCase,
    this.text,
    this.icon,
  });

  double width = 150.0;
  Color background = Colors.blue;
  bool? isUpperCase = true;
String? icon;
  Function? function;
  String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(

        width: width,
        height: 40.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(color: Colors.black54)),
        child: Row(
          children: [
            Icon(Icons.ac_unit
            ),
            MaterialButton(
              onPressed: () {
                function!();
              },
              child: Text(
                text!,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 10.0,
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
