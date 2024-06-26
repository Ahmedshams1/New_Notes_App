import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:newnoteapp/constant.dart';
import 'package:newnoteapp/cubits/add_note_cubit/cubit/notes_cubit.dart';
import 'package:newnoteapp/models/note_Model.dart';
import 'package:newnoteapp/simple_bloc_observer.dart';
import 'package:newnoteapp/views/notesView.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = simpleBlocObserver();
  Hive.registerAdapter(NotesModelAdapter());
  await Hive.openBox<NotesModel>(kNotesBox);

  runApp(const NewNotesApp());
}

class NewNotesApp extends StatelessWidget {
  const NewNotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        home: const NotesView(),
      ),
    );
  }
}
