import 'package:flutter/material.dart';
import 'package:loghaty/utils/constants/sizes.dart';

import 'prize_card.dart';
import 'quiz_statistics/quiz_statistics.dart';

class PrizeScreen extends StatelessWidget {
  const PrizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: FSizes.md),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Prize card
                PrizeCard(),

                SizedBox(height: FSizes.spaceBtwSections),

                // Questions statistics card
                QuizStatisticsCard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
