import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/eedit_note_color_listview.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const SizedBox(height: 50),
            CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTilte = subTitle ?? widget.note.subTilte;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              title: "Edit Note",
              icon: Icons.check,
            ),
            const SizedBox(height: 50),
            CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hintText: widget.note.title,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              onChanged: (value) {
                subTitle = value;
              },
              hintText: widget.note.subTilte,
              maxLines: 5,
            ),
            const SizedBox(height: 16),
            EditNoteColorsList(note: widget.note),
          ],
        ),
      ),
    );
  }
}
