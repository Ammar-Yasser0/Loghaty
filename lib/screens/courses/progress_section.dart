import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loghaty/utils/constants/colors.dart';
import 'package:loghaty/utils/constants/sizes.dart';

class ProgressSectoin extends StatelessWidget {
  const ProgressSectoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'مستوى التقدم',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: FSizes.spaceBtwItems,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: FSizes.sm),
          child: CustomProgressBar(progress: 0.4),
        ),
      ],
    );
  }
}

class CustomProgressBar extends StatelessWidget {
  final double progress; // Value between 0 and 1

  const CustomProgressBar({super.key, required this.progress});

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

class CircularProgressBar extends StatelessWidget {
  final double progress; // Value between 0 and 1

  CircularProgressBar({required this.progress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: CustomPaint(
        painter: _CircularPainter(progress),
      ),
    );
  }
}

class _CircularPainter extends CustomPainter {
  final double progress;

  _CircularPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    Paint backgroundPaint = Paint()
      ..color = Colors.grey[300]!
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;

    Paint progressPaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(
      size.center(Offset.zero),
      size.width / 2,
      backgroundPaint,
    );

    double angle = 2 * 3.141592653589793 * progress; // Convert to radians
    canvas.drawArc(
      Rect.fromCircle(center: size.center(Offset.zero), radius: size.width / 2),
      -3.141592653589793 / 2, // Start angle
      angle, // Sweep angle
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
