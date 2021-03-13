import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  final String error;

  Error({this.error = 'Something went wrong, please try again!'});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.lightBlueAccent,
        child: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              // Image.asset(),
              Text(
                error,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    fontFamily: 'Europe_Ext'),
              )
            ])));
  }
}