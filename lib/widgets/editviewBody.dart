import 'package:flutter/material.dart';
import 'package:newnoteapp/widgets/custemAppar.dart';
import 'package:newnoteapp/widgets/custemTextField.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustemAppar(title: 'Edit Note', icon: Icons.check),
          SizedBox(
            height: 50,
          ),
          CustemTextField(hint: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustemTextField(hint: 'Content', maxline: 5),
        ],
      ),
    );
  }
}
