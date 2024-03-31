import 'package:flutter/material.dart';
import 'package:newnoteapp/models/note_Model.dart';
import 'package:newnoteapp/widgets/editviewBody.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NotesModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(
        note: note,
      ),
    );
  }
}
