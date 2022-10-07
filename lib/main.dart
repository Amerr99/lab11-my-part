import 'package:english/screens/edit.dart';
import 'package:english/screens/home.dart';
import 'package:english/screens/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
          dividerColor: Colors.black, primaryColor: Colors.blue.shade300),
      routes: {
        "edit page": (context) => Edit_Profile(),
        "profile page": (context) => ProfilePage()
      },
      home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
