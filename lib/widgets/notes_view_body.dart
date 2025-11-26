import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 50),
        CustomAppBar(title: "Notes", icon: Icons.search),
        Expanded(child: NotesListView()),
      ],
    );
  }
}

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return ListView.builder(
          itemCount: notes.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: NoteItem(),
            );
          },
        );
      },
    );
  }
}
