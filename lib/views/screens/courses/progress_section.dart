import 'package:flutter/material.dart';
import 'package:loghaty/utils/constants/sizes.dart';
import 'package:loghaty/views/widgets/progress_bars/linear_bar.dart';

// This class show the progress in the level courses
class LevelProgressSection extends StatelessWidget {
  const LevelProgressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section title
        Text(
          'مستوى التقدم',
          style: Theme.of(context).textTheme.titleLarge,
        ),

        const SizedBox(height: FSizes.spaceBtwItems), // Just a space

        // Linear progress bar to calcualte the progress in 
        // courses of the level
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: FSizes.sm),
          // Progress will be caculated with a function in utils
          child: LinearProgressBar(progress: 0.4), 
        ),
      ],
    );
  }
}
