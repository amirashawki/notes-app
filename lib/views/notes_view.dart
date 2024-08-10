import 'package:flutter/material.dart';
import 'package:project/widgets/Add_note_bottom_sheet.dart';
import 'package:project/widgets/constant.dart';
import 'package:project/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    
    
    
        body:const NotesViewBody(), 
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  context: context,
                  builder: (context) {
                    return const AddNoteBottomSheet();
                  });
            },
            child:const Icon(
              Icons.add,
              color:  Colors.black,
            ),
            backgroundColor: KprimaryColor,
            shape: const CircleBorder(),
          ),
                
           
    
    
    
    
    
    
    
    
    
    
      );
  }
}