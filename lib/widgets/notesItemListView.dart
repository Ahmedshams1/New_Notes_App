import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newnoteapp/cubits/add_note_cubit/cubit/notes_cubit.dart';
import 'package:newnoteapp/models/note_Model.dart';
import 'package:newnoteapp/widgets/custemItemNotes.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NotesModel> notes = BlocProvider.of<NotesCubit>(context).notes!;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: notes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: NotesItem(note: notes[index]),
                );
              }),
        );
      },
    );
  }
}
