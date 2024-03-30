import 'package:flutter/material.dart';
import 'package:newnoteapp/widgets/addNoteForm.dart';
import 'package:newnoteapp/widgets/costemBotten.dart';
import 'package:newnoteapp/widgets/custemTextField.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(child: AddNoteForm()),
    );
  }
}
