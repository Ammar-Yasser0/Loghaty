import 'package:flutter/material.dart';
import 'package:loghaty/screens/courses/courses.dart';
import 'package:loghaty/utils/constants/colors.dart';

// This screen for let user see the levels of Arabic language.
class LessonsScreen extends StatelessWidget {
  const LessonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('دروس النحو'),
        centerTitle: true,
      ),
      // Arabic Levels list
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        itemCount: 4,
        itemBuilder: (context, index) {
          return LessonItem(
            index: index,
          );
        },
      ),
    );
  }
}

class LessonItem extends StatelessWidget {
  const LessonItem({
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
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => const CoursesScreen()),
        // );
      },

      // If we locked the level, the color would be as a disabled color
      // for the level card
      child: Card(
        margin: const EdgeInsets.all(4),
        color: index != 0 ? FColors.grey : FColors.secondary,
        child: ListTile(
          title: const Text("المبتدأ"),
          trailing: Icon(index != 0 ? Icons.lock : Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
