import 'package:flutter/material.dart';

class CircularProgressBar extends StatelessWidget {
  final double progress; // Value between 0 and 1

  const CircularProgressBar({super.key, required this.progress});

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

// This class creates the circular progress bar paint
class _CircularPainter extends CustomPainter {
  final double progress;

  _CircularPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    Paint backgroundPaint = Paint()
      ..color = Colors.grey[300]!
      ..strokeWidth = 8
      ..style = PaintingStyle.stroke;

    Paint progressPaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 8
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