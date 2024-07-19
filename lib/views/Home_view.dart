import 'package:flutter/material.dart';
import 'package:project/widgets/Add_note_bottom_sheet.dart';
import 'package:project/widgets/constant.dart';
import 'package:project/widgets/custom_appBar.dart';
import 'package:project/widgets/custom_listview_notes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return AddNoteBottomSheet();
              });
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: KprimaryColor,
        shape: CircleBorder(),
      ),
    );
  }
}
