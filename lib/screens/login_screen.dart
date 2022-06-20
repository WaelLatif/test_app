// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/custom_button.dart';
import '../components/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static String id = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Image.asset(
              'assets/images/logo.jpg',
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Welcome Back!',
            style: TextStyle(
              fontSize: 28.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Let\'s Share your talent with the world',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 40.0,
          ),
          CustomTextField(
            hintText: 'Sign up with Email',
          ),
          SizedBox(
            height: 45.0,
          ),
          Row(

            children: [
              SizedBox(width: 20.0,),
              Container(
                child: Expanded(
                  child: Divider(
                    thickness: 2.0,
                    color: Colors.black45,
                  ),
                ),
              ),
              SizedBox(width: 4.0,),
              Text(
                'OR',
                style: TextStyle(
                  fontSize: 14.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(width: 4.0,),
              Container(
                child: Expanded(
                  child: Divider(
                    thickness: 2.0,
                    color: Colors.black45,
                  ),
                ),
              ),
              SizedBox(width: 20.0,),
            ],
          ),
          SizedBox(
            height: 45.0,
          ),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  text: 'Sign up with Google',
                ),
              ),
              SizedBox(width: 10.0,),
              Expanded(
                child: CustomButton(
                  text: 'Sign up with Facebook',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
