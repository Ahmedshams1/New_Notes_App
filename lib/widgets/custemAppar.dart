import 'package:flutter/material.dart';
import 'package:noteapp/widget/CustemSearchIcon.dart';

class CustemAppar extends StatelessWidget {
  const CustemAppar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        CustemSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
