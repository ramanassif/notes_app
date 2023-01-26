import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/color_item.dart';

class EditNoteColorsList extends StatefulWidget {
  final NoteModel noteModel;
  const EditNoteColorsList({Key? key,required this.noteModel}) : super(key: key);

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int currentIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.noteModel.color = kColors[index].value;
              setState(() {});
            },
            child: ColorItem(
              isSelected: currentIndex == index ? true : false,
              color: kColors[index],
            ),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.noteModel.color));
    super.initState();
  }
}
