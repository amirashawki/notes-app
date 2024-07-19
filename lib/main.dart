import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:project/models/note_model.dart';
import 'package:project/views/Home_view.dart';

void main() async{

  await Hive.initFlutter();

  await Hive.openBox('notes_box');
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNotesCubit()),
      ],
      child: MaterialApp(
      
      
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark,
         fontFamily: 'Poppins'),
        home: HomePage(),
      ),
    );
  }
}
