import 'package:flutter/material.dart';

class AfterLessonOptions extends StatelessWidget {
  const AfterLessonOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Option(
          icon: Icons.question_mark,
          title: 'تدريبات',
        ),
        Option(
          icon: Icons.chat,
          title: 'استفسر',
        ),
      ],
    );
  }
}

class Option extends StatelessWidget {
  const Option({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          child: Icon(icon),
        ),
        Text(title)
      ],
    );
  }
}
