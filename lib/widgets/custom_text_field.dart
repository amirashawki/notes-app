import 'package:flutter/material.dart';
import 'package:project/widgets/constant.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hint,  this.mixLine =1,this.onSaved, this.onChanged});
   final String hint;
   final int mixLine;
   final void Function(String?)? onSaved;
   final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if(value?.isEmpty ??true){
          return 'field is required';
        }
      },
      maxLines: mixLine,
      cursorColor: KprimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:const TextStyle(color: KprimaryColor),
        border: buildBorde(),
        
          focusedBorder: buildBorde(KprimaryColor),
          enabledBorder: buildBorde())
          
          
            
    );
  }

  OutlineInputBorder buildBorde([color]) {
    return OutlineInputBorder(
        borderSide:BorderSide(color: color??Colors.white) ,
        borderRadius: BorderRadius.circular(10));
  }
}
