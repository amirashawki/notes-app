import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project/cubits/add_notes_cubit/add%20_note_state.dart';
import 'package:project/models/note_model.dart';

class AddNotesCubit extends Cubit<AddNoteState>{
  AddNotesCubit(): super(AddNoteState());


  addNote(NoteModel note)async{
   emit(AddNoteLoadingState());
 try {
  var notesBok=  Hive.box<NoteModel>('notes_box');
  emit(AddNoteSuccessState())
     await  notesBok.add(note);
} on Exception catch (e) {
  
}


    
  }

}
