import 'package:flutter/material.dart';
import 'login/login.dart';
import 'login/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: login(),
        routes: {
          "signup": (context) => signup(),
        });
  }
}
