import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newnoteapp/cubits/add_note_cubit/cubit/notes_cubit.dart';
import 'package:newnoteapp/widgets/addBottomSheet.dart';
import 'package:newnoteapp/widgets/notesViewBody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const AddNotesBottomSheet();
                });
          },
          child: Icon(Icons.add),
        ),
        body: NotesViewBody(),
      ),
    );
  }
}
