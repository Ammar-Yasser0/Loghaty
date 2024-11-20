import 'package:flutter/material.dart';
import 'package:loghaty/utils/constants/colors.dart';
import 'package:loghaty/utils/constants/sizes.dart';

import 'course_item.dart';

class CoursesList extends StatelessWidget {
  const CoursesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: FColors.highlightColor,
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: FSizes.md, vertical: FSizes.lg),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: FSizes.xl,
          mainAxisSpacing: FSizes.xl,
        ),
        itemCount: 20,
        itemBuilder: (_, index) {
          return const CourseItem();
        },
      ),
    );
  }
}
