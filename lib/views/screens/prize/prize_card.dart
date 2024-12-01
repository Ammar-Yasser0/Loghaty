import 'package:flutter/material.dart';
import 'package:loghaty/utils/constants/sizes.dart';

class PrizeCard extends StatelessWidget {
  const PrizeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(FSizes.md),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          // image
          Image.asset(
            'images/prize.png',
            fit: BoxFit.contain,
            width: 150,
            height: 150,
          ),

          // text
        ],
      ),
    );
  }
}