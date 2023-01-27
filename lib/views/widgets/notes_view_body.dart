import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes/notes_cubit.dart';
import 'package:notes_app/services/theme_service/theme_service.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';
import 'package:provider/provider.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          CustomAppBar(
            onPress: (){
              Provider.of<ThemeServices>(context, listen: false).toggleMode();
            },
            title: 'Notes',
            icon: Provider.of<ThemeServices>(context).mode == ThemeMode.dark
                ? Icons.wb_sunny_outlined
                : Icons.nightlight_round_outlined,
          ),
          const Expanded(child: NotesListView()),
        ],
      ),
    );
  }

  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
}
