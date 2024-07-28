import "package:flutter/material.dart";
import "package:project/models/note_model.dart";
import "package:project/widgets/color_list.dart";
import "package:project/widgets/constant.dart";


class EditColorList extends StatefulWidget {
  const EditColorList({super.key, required this.note});
  
  final NoteModel note;
  @override
  State<EditColorList> createState() => _EditColorListState();
}

class _EditColorListState extends State<EditColorList> {

late int currentIndex  ;
void initState(){
currentIndex=Kcolors.indexOf( Color(widget.note.color));
super.initState();
}
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Kcolors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                     widget.note.color=Kcolors[index].value;
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ColorItem(
                      ischsooen: currentIndex == index,
                      color: Kcolors[index],
                    ),
                  )),
            );
          }),
    );
  }
}
