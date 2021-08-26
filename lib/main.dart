import 'package:flutter/material.dart';
import 'package:profile_app/my_profile.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyProfile(),
      appBar: AppBar(
        shadowColor: Colors.blueAccent,
        backgroundColor: Colors.black,
        title: Text(
          "My Profile",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
