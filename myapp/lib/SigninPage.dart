import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomWidget/custom_raised_button.dart';

class Signinpage extends StatelessWidget {
  Future<void>  _signinAnonymously() async {
    final userCredentials =await FirebaseAuth.instance.signInAnonymously();
    print('${userCredentials.user}');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        elevation: 2.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Sign in',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            customButton(text: 'Sign in with google',color: Colors.white,border:10.0,
            onpress:(){},
            ),
            SizedBox(
              height: 8,
            ),
            customButton(
                text: 'sign in with facebook', color: Colors.blue, border: 10, onpress: (){}),
            Container(
              color: Colors.cyan,
              child: SizedBox(
                height: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
