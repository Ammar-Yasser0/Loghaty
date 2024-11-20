import 'package:flutter/material.dart';
import 'package:loghaty/screens/courses/courses_list.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ProgressSectoin(),
            const SizedBox(height: FSizes.spaceBtwSections),
            const Expanded(
              child: CoursesList(),
            ),
            const SizedBox(height: FSizes.spaceBtwSections),
            SizedBox(
              width: 2 * (MediaQuery.of(context).size.width / 3),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('اختبار تخطي المستوى'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
