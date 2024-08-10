import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubits/add_notes_cubit/add%20_note_state.dart';
import 'package:project/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:project/models/note_model.dart';
import 'package:project/widgets/Add_notes_botton.dart';
import 'package:project/widgets/color_list.dart';
import 'package:project/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomTextFormField(
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: ' subTitle',
            mixLine: 5,
          ),
          const SizedBox(
            height: 25,
          ),
          ColorList(),
          const SizedBox(
            height: 25,
          ),

          BlocBuilder<AddNotesCubit, AddNoteState>(builder: (context, state) {
            return AddNotesBotton(
                isLoading: state is AddNoteLoadingState ? true : false,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    
                    var noteModel = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: DateTime.now().toString(),
                        color: Colors.amber.value);
                    BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);

                     

                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                });
          }),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
