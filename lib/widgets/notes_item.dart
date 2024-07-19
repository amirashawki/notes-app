import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/views/edit_note_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){return EditNoteView();}));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 135, 200, 253),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20, left: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  'Flutter tips',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Build your career with amira shawki  ',
                    style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 17),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.trash,size: 22,),
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20,top: 10),
                child: Text(
                  'May21 ,2022',
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
