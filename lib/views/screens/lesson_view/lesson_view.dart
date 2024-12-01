import 'package:flutter/material.dart';
import 'package:loghaty/utils/constants/colors.dart';
import 'package:loghaty/utils/constants/sizes.dart';

import 'Lesson_Material.dart';
import 'lesson_options.dart';

// Show the lesson class to show the video or the powerpoint file in the app
class LessonView extends StatelessWidget {
  const LessonView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: FSizes.sm, vertical: FSizes.md),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                // Title of the lesson
                LessonTitle(),

                SizedBox(height: FSizes.spaceBtwSections),

                // TODO: implement the video or the file instead of the container
                LessonMaterial(),

                SizedBox(height: FSizes.spaceBtwSections),

                // Premium features
                // Quizes button and Q&A button
                // TODO: Check if user paid or not before enable these features
                AfterLessonOptions(),

                SizedBox(height: FSizes.spaceBtwSections),

                BackToLessonsButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LessonTitle extends StatelessWidget {
  const LessonTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'المبتدأ',
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}

class BackToLessonsButton extends StatelessWidget {
  const BackToLessonsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          height: 40,
          padding: const EdgeInsets.symmetric(
            horizontal: FSizes.md,
          ),
          decoration: BoxDecoration(
            color: FColors.accent,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'عودة',
                style: Theme.of(context).textTheme.titleLarge,
              ),
      
              // const SizedBox(width: FSizes.xs),
      
              const Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
