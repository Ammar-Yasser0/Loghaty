import 'package:flutter/material.dart';
import 'package:loghaty/utils/constants/colors.dart';

import '../courses/courses.dart';


// Level item widget creates a card with a ListTile and it has an onTap
// function to direct the user to courses page
class LevelItem extends StatelessWidget {
  const LevelItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // If user chooses any evaliable level, this function will direct
        // him to the courses screen for selected level
        // TODO: Go to courses page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CoursesScreen()),
        );
      },

      // If we locked the level, the color would be a disabled color
      child: Card(
        margin: const EdgeInsets.all(8),
        color: index != 0
            ? FColors.grey
            : FColors.secondary, // Change this condition
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: const Text("المستوى الأول"),
            trailing: Icon(index != 0 ? Icons.lock : Icons.arrow_forward_ios),
          ),
        ),
      ),
    );
  }
}