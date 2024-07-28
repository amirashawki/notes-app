import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project/cubits/add_notes_cubit/add%20_note_state.dart';
import 'package:project/models/note_model.dart';
import 'package:project/widgets/constant.dart';

class AddNotesCubit extends Cubit<AddNoteState> {
  AddNotesCubit() : super(AddNoteState());
 Color color =Color(0xffff99c8);
  addNote(NoteModel note) async {
       note.color=color.value;
    emit(AddNoteLoadingState());
    try {
      var notesBok = Hive.box<NoteModel>( KNotesBox);

      await notesBok.add(note);
      emit(AddNoteSuccessState());
    } catch (e) {
      emit(AddNoteFailureState(e.toString()));
    }
  }
}
