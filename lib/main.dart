import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:newnoteapp/constant.dart';
import 'package:newnoteapp/views/notesView.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
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
