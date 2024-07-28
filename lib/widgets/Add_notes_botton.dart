import 'package:flutter/material.dart';
import 'package:project/widgets/constant.dart';

class AddNotesBotton extends StatelessWidget {
  const AddNotesBotton({super.key, this.onPressed, this.isLoading = false});
  final void Function()? onPressed;

  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: KprimaryColor),
        width: MediaQuery.of(context).size.width,
        child: TextButton(
            onPressed: onPressed,
            child: isLoading
                ? const SizedBox(
                    height: 25,
                    width: 25,
                    child: const CircularProgressIndicator(
                      color: Colors.black,
                    ))
                : const Text(
                    'Add',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )));
  }
}
