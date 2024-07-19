import 'package:flutter/material.dart';
import 'package:project/widgets/custom_icon.dart';

class CustomAppbar extends StatelessWidget {
 const  CustomAppbar({required this.title,super.key, required this.icon,required this.onPressed});
 final String title;
  final Icon icon;
 final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 25),
        ),
        customIcon(onPressed: onPressed
          
        , icon: icon),
      ],
    );
  }
}
