import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:project/widgets/constant.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.ischsooen, required this.color});
  final bool ischsooen;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ischsooen
        ? CircleAvatar(
            radius: 50,
            backgroundColor: color,
          )
        : CircleAvatar(
            radius: 30,
            backgroundColor: color,
          );
  }
}

class ColorList extends StatefulWidget {
  const ColorList({super.key});

  @override
  State<ColorList> createState() => _ColorListState();
}

int currentIndex = 0;

class _ColorListState extends State<ColorList> {
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
                    BlocProvider.of<AddNotesCubit>(context).color=Kcolors[index];
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
