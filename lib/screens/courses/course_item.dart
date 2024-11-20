import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loghaty/utils/constants/colors.dart';

import 'progress_section.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
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
        CircularProgressBar(progress: 0.6,)
      ],
    );
  }
}