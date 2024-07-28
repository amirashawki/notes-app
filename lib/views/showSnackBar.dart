import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(text),
   
      backgroundColor: Colors.white,
      duration: Duration(seconds: 30),
    shape: RoundedRectangleBorder( 
     
      borderRadius: BorderRadius.circular(16.0))));
}
