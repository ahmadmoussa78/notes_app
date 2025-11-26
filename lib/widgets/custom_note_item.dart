import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/edit_note_view_body.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6, bottom: 6, left: 16, right: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const EditNoteViewBody();
              },
            ),
          );
        },
        child: Material(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
          child: Container(
            padding: const EdgeInsets.only(bottom: 12),
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    note.title,
                    style: const TextStyle(color: Colors.black, fontSize: 26),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    child: Text(
                      note.subTilte,
                      style: const TextStyle(
                        color: Color(0xffCA995D),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete, color: Colors.black),
                    iconSize: 24,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text(
                    note.date,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xffCA995D),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
