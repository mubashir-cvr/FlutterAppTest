import 'package:flutter/material.dart';
import 'SigninPage.dart';

void main() {
  runApp(MyApp()); //run app root widget
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Tracker',
      theme: ThemeData(
        primarySwatch:Colors.indigo,
      ),
      home: Signinpage(),
    );
  }
}
