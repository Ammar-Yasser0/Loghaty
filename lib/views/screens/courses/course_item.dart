import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loghaty/utils/constants/colors.dart';
import 'package:loghaty/views/widgets/progress_bars/circular_bar.dart';

// This class creates the course item with circular progress for each one
class CourseItem extends StatelessWidget {
  const CourseItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // TODO: I want to enhance the design more than that
        Card(
          color: FColors.accent,
          shape: const CircleBorder(),
          child: Center(
            child: Text(
              'نحو',
              style: GoogleFonts.cairo(
                fontSize: Theme.of(context).textTheme.displayMedium!.fontSize,
                color: Colors.white,
              ),
            ),
          ),
        ),

        // Circular progress for the single course item
        const CircularProgressBar(progress: 0.6,)
      ],
    );
  }
}