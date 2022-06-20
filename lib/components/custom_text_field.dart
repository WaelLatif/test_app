import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    this.hintText,
    this.onChanged,
  });

  String? hintText;
  Function(String)? onChanged;
  String? id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
        ),
        child: TextFormField(
          validator: (data) {
            if (data!.isEmpty) {
              return 'field is required !';
            }
          },
          textAlign: TextAlign.center,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: new TextStyle(
              fontSize: 16.0,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black54, width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black54, width: 2.0),
            ),
          ),
        ),
      ),
    );
  }
}
