import 'package:flutter/material.dart';
import 'package:newnoteapp/widgets/costemBotten.dart';
import 'package:newnoteapp/widgets/custemTextField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(),
            CustemTextField(
              hint: 'Title',
            ),
            CustemTextField(
              hint: 'contant',
              maxline: 5,
            ),
            SizedBox(
              height: 16,
            ),
            CostomButton(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
