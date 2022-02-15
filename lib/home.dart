// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Text(
          "Welcome to Home Page!!!"
        ),
      ),
    ));
  }
}
