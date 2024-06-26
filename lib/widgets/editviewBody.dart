import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newnoteapp/constant.dart';
import 'package:newnoteapp/cubits/add_note_cubit/cubit/notes_cubit.dart';
import 'package:newnoteapp/models/note_Model.dart';
import 'package:newnoteapp/widgets/colorsListView.dart';
import 'package:newnoteapp/widgets/custemAppar.dart';
import 'package:newnoteapp/widgets/custemTextField.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NotesModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustemAppar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = content ?? widget.note.subTitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              title: 'Edit Note',
              icon: Icons.check),
          SizedBox(
            height: 50,
          ),
          CustemTextField(
              onChanged: (value) {
                title = value;
              },
              hint: widget.note.title),
          SizedBox(
            height: 16,
          ),
          CustemTextField(
              onChanged: (value) {
                content = value;
              },
              hint: widget.note.subTitle,
              maxline: 5),
          SizedBox(
            height: 16,
          ),
          editNoteColorListView(note: widget.note),
        ],
      ),
    );
  }
}

class editNoteColorListView extends StatefulWidget {
  const editNoteColorListView({super.key, required this.note});
  final NotesModel note;
  @override
  State<editNoteColorListView> createState() => _editNoteColorListViewState();
}

class _editNoteColorListViewState extends State<editNoteColorListView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColor.indexOf(Color(widget.note.color));
    super.initState();
  }

  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: kColor.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kColor[index].value;

                  setState(() {});
                },
                child: ColorItem(
                  color: kColor[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
