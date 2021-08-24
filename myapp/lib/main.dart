import 'package:flutter/material.dart';
import 'Discussion.dart';
import 'SigninPage.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp()); //run app root widget
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Tracker',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Discussion(title: 'Discussion Page',),
    );
  }
}
