import 'package:flutter/material.dart';


class customIcon extends StatelessWidget {
const customIcon({required this.icon,required this.onPressed,
    super.key,
  });
  final Icon icon;
 final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15)),
      height: 45,
      width: 45,
      child: Center(
          child: IconButton(onPressed: onPressed, icon: icon)),
    );
  }
}
