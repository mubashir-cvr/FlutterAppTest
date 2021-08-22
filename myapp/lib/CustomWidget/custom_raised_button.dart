import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  customButton(
      {required this.text,
      required this.color,
      required this.border,
      required this.onpress});

  final String text;
  final Color color;
  final double border;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Logo'),
            Text(
              text,
              style: TextStyle(fontSize: 20, color: Colors.black54),
            ),
            Opacity(
              opacity: 0,
              child: Text('Logo'),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
            primary: color,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(border)),
            ),
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        onPressed: () {
          onpress;
        });
  }
}
