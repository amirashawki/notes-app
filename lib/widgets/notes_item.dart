import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:project/cubits/notes_cubit.dart/notes_cubit.dart';
import 'package:project/models/note_model.dart';
import 'package:project/views/edit_note_view.dart';
import 'package:project/views/showSnackBar.dart';

class NotesItem extends StatelessWidget {
  NotesItem({super.key, required this.note});
  final NoteModel note;

  final formattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView(note: note,);
        }));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(note.color), borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20, left: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    note.subTitle,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.4), fontSize: 17),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                  showSnackBar(context, 'note is deleted');
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                   
                  },
                  icon: Icon(
                    FontAwesomeIcons.trash,
                    size: 22,
                  ),
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 10),
                child: Text(
                  data(note.date),
                  style: TextStyle(color: Colors.black.withOpacity(0.4)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

data(date) {
  DateTime dateTime = DateTime.parse(date);
  final formattedDate = DateFormat('yyyy-MM-dd').format(dateTime);
  return formattedDate;
}
