import 'package:flutter/material.dart';
import 'package:newnoteapp/widgets/custemTextField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(),
        CustemTextField(
          hint: 'Title',
        ),
        CustemTextField(
          hint: 'contant',
          maxline: 5,
        ),
      ],
    );
  }
}
