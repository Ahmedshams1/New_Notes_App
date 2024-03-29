import 'package:flutter/material.dart';
import 'package:newnoteapp/views/notesView.dart';

void main() {
  runApp(const NewNotesApp());
}

class NewNotesApp extends StatelessWidget {
  const NewNotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: NotesView(),
    );
  }
}
