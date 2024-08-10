import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project/cubits/notes_cubit.dart/notes_state.dart';
import 'package:project/models/note_model.dart';
import 'package:project/widgets/constant.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesState());
     List<NoteModel > ?notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(KNotesBox);
    notes = notesBox.values.toList();
    emit(NotesSuccessState());
        
  }
  
}
