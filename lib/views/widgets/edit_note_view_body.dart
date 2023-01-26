import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/edit_note_colors_list.dart';

class EditNoteViewBody extends StatefulWidget {
  final NoteModel noteModel;

  const EditNoteViewBody({Key? key, required this.noteModel}) : super(key: key);

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 8,
            ),
            CustomAppBar(
              onPress: () {
                widget.noteModel.title = title ?? widget.noteModel.title;
                widget.noteModel.content = content ?? widget.noteModel.content;
                widget.noteModel.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              title: 'Edit Note',
              icon: Icons.check,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hintText: widget.noteModel.title,
              maxLines: 1,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              onChanged: (value) {
                content = value;
              },
              hintText: widget.noteModel.content,
              maxLines: 5,
            ),
            const SizedBox(
              height: 16,
            ),
            EditNoteColorsList(noteModel: widget.noteModel),
          ],
        ),
      ),
    );
  }
}
