import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6, bottom: 6, left: 16, right: 16),
      child: Material(
        child: Container(
          padding: const EdgeInsets.only(bottom: 24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xffFFCC80),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Text(
                  "Flutter Tips",
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),

                subtitle: const Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(
                    "Build You Career with Flutter Tips ",
                    style: TextStyle(color: Color(0xffCA995D), fontSize: 18),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.trash),
                  iconSize: 24,
                  color: Colors.black,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 16),
                child: Text(
                  "Oct 30, 2025",
                  style: TextStyle(fontSize: 16, color: Color(0xffCA995D)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
