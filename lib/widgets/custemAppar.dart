import 'package:flutter/material.dart';
import 'package:newnoteapp/widgets/CustemSearchIcon.dart';

class CustemAppar extends StatelessWidget {
  const CustemAppar(
      {super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
  final void Function()? onPressed;
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
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
