import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubits/notes_cubit.dart/notes_cubit.dart';
import 'package:project/widgets/custom_appBar.dart';
import 'package:project/widgets/custom_listview_notes.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomAppbar(
              title: 'Notes',
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            Expanded(child: NotesListview()),
          ],
        ),
      ),
    );
  }
}
