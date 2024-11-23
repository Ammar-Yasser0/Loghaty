import 'package:flutter/material.dart';
import 'package:loghaty/views/screens/courses/courses_list.dart';
import 'package:loghaty/utils/constants/sizes.dart';

import 'progress_section.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('المواد'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: FSizes.sm, vertical: FSizes.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Progress bar of the whole level courses
            const LevelProgressSection(), // TODO: Change it's style

            const SizedBox(height: FSizes.spaceBtwSections),

            // Courses grid view and I put it in expanded widget to ensure that
            // it will take the rest of the column height
            const Expanded(child: CoursesList()),

            const SizedBox(height: FSizes.spaceBtwSections),

            // Pass the level button to jumb levels with a test
            // TODO: Change the button design and separate it as a reusable widget
            SizedBox(
              width: 2 * (MediaQuery.of(context).size.width / 3),
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Direct the user to test page
                },
                child: const Text('اختبار تخطي المستوى'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
