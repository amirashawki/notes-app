import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubits/add_notes_cubit/add%20_note_state.dart';
import 'package:project/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:project/cubits/notes_cubit.dart/notes_cubit.dart';
import 'package:project/views/showSnackBar.dart';
import 'package:project/widgets/Add_note_form.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child:
          BlocConsumer<AddNotesCubit, AddNoteState>(
            listener: (context, state) {
        if (state is AddNoteSuccessState) {
          BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          Navigator.pop(context);
        showSnackBar(context, 'note is added   ');
       
        }
        if (state is AddNoteFailureState) {
          print('Failed${state.errorMessage}');
        }
      }, builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is AddNoteLoadingState ? true : false,
          child: Padding(
            padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: const SingleChildScrollView(child: AddNoteForm()),
          ),
        );
      }),
    );
  }
}
