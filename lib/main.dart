import 'package:flutter/material.dart';
import 'package:test_app/screens/login_screen.dart';
import 'package:test_app/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'LoginScreen',
    );
  }
}
