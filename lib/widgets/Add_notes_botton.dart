import 'package:flutter/material.dart';
import 'package:project/widgets/constant.dart';

class AddNotesBotton extends StatelessWidget {
  const AddNotesBotton({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: KprimaryColor),
        width: MediaQuery.of(context).size.width,
        child: TextButton(
            onPressed: onPressed,
            child: Text(
              'Add',
              style: TextStyle(color: Colors.black, fontSize: 16),
            )));
  }
}
