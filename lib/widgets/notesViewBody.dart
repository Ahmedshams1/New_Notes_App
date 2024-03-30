import 'package:flutter/material.dart';
import 'package:newnoteapp/widgets/custemAppar.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustemAppar(
            title: 'Notes',
            icon: Icons.search,
          ),
        ],
      ),
    );
  }
}
