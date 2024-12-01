import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loghaty/utils/constants/colors.dart';

class LinearProgressBar extends StatelessWidget {
  final double progress; // Value between 0 and 1

  const LinearProgressBar({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[300], // Background color
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            width: progress * MediaQuery.of(context).size.width, // Adjust width
            decoration: BoxDecoration(
              color: Colors.green, // Progress bar color
              borderRadius: BorderRadius.circular(10),
            ),

            child: Text(
              '${(progress * 100).round()}%',
              style: GoogleFonts.notoSansIndicSiyaqNumbers(
                color: FColors.white,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LinearProgressWithoutTitle extends StatelessWidget {
  final double progress; // Value between 0 and 1

  const LinearProgressWithoutTitle({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      decoration: BoxDecoration(
        color: Colors.grey[300], // Background color
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            width: progress * MediaQuery.of(context).size.width, // Adjust width
            decoration: BoxDecoration(
              color: Colors.green, // Progress bar color
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
