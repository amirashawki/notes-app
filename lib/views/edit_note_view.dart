import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubits/notes_cubit.dart/notes_cubit.dart';
import 'package:project/models/note_model.dart';
import 'package:project/widgets/custom_appBar.dart';
import 'package:project/widgets/custom_text_field.dart';
import 'package:project/widgets/editcolorList.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

String? editTitle, editSubTitle;

class _EditNoteViewState extends State<EditNoteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppbar(
                title: 'Edit Note',
                icon: Icon(Icons.check),
                onPressed: () {
                  widget.note.title = editTitle ?? widget.note.title;
                  widget.note.subTitle = editSubTitle ?? widget.note.subTitle;
                  widget.note.save();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  Navigator.pop(context);
                }),
            SizedBox(
              height: 50,
            ),
            CustomTextFormField(
              onChanged: (value) {
                editTitle = value;
              },
              hint: widget.note.title,
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              onChanged: (value) {
                editSubTitle = value;
              },
              hint: widget.note.subTitle,
              mixLine: 5,
            ),
            SizedBox(height: 15,),
            EditColorList(note: widget.note,),
          ],
        ),
      ),
    );
  }
}
 
