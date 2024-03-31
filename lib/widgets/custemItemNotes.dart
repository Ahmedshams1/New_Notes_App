import 'package:flutter/material.dart';
import 'package:newnoteapp/models/note_Model.dart';
import 'package:newnoteapp/views/editNoteView.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.note});
  final NotesModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView();
        }));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(note.color), borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 16,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            title: Text(
              note.title,
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(note.subTitle,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.4), fontSize: 20)),
            ),
            trailing: IconButton(
                onPressed: () {
                  note.delete();
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              note.date,
              style: TextStyle(color: Colors.black.withOpacity(0.4)),
            ),
          ),
        ]),
      ),
    );
  }
}
