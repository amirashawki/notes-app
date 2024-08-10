import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubits/notes_cubit.dart/notes_cubit.dart';
import 'package:project/cubits/notes_cubit.dart/notes_state.dart';
import 'package:project/models/note_model.dart';
import 'package:project/widgets/notes_item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit,NotesState>(
      builder: (context, state) {
        List<NoteModel> notes=BlocProvider.of<NotesCubit>(context).notes ??[];
        
        return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
        //  reverse: true,
          itemCount: notes.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child:  NotesItem(note: notes[index],),
          );
        }),
      );
      },
     
    );
  }
}
