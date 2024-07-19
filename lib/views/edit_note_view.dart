import 'package:flutter/material.dart';
import 'package:project/widgets/custom_appBar.dart';
import 'package:project/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [  
                  SizedBox(height: 50,),
             CustomAppbar(title: 'Edit Note', icon: Icon(Icons.check), onPressed: (){}),
            SizedBox(height: 50,),
              CustomTextFormField(hint: 'Title',),
              SizedBox(height: 16,),
              CustomTextFormField(hint: 'Content',mixLine: 5,),
             
          ],
        ),
      ),
    );
  }
}