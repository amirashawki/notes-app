import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(text),
      backgroundColor: Colors.white,
      duration: const Duration(seconds: 2),
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0))));
}

void showSnackBar2(BuildContext context, onPressed) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    
      content: Container(
        child: Column(
          children: [
           const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    FontAwesomeIcons.circleExclamation,
                    color: Colors.black,
                  ),
                ),
                Text('Are you sure deleting note'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: onPressed,
                    child: const Text(
                      'yes',
                      style: TextStyle(color: Colors.black),
                    )),
                TextButton(
                    onPressed: () {
                     ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    },
                    child: const Text(
                      'cancel',
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      duration: const Duration(seconds: 2),
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0))));
}
