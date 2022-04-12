import 'package:flutter/material.dart';
import 'package:healthy/home/home_page.dart';
import 'package:healthy/onboard/login_page.dart';
import 'package:healthy/onboard/sign_up_page.dart';
import 'package:healthy/onboard/welcome_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Home Now',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: SignupPage());
  }
}
