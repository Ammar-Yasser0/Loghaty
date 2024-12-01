import 'package:flutter/material.dart';
import 'package:loghaty/utils/constants/colors.dart';
import 'package:loghaty/utils/constants/sizes.dart';

import 'answers_card.dart';
import 'questions_card/questions_card.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          QuizScreenBackground(),
          SingleChildScrollView(
            child: Padding(
              padding:
                 EdgeInsets.fromLTRB(8, 3 * FSizes.spaceBtwSections, 8, 8),
              child: Column(
                children: [
                  QuestionsInfoCard(),
                  SizedBox(height: FSizes.spaceBtwItems),
                  AnswersCard(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}



class QuizScreenBackground extends StatelessWidget {
  const QuizScreenBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: FColors.primary,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height / 3,
          ),
        ),
        Positioned(
          top: -10,
          left: -10,
          child: CircleAvatar(
            backgroundColor: FColors.white.withOpacity(0.3),
            radius: 40,
          ),
        ),
        Positioned(
          right: -10,
          top: 50,
          child: CircleAvatar(
            backgroundColor: FColors.white.withOpacity(0.3),
            radius: 25,
          ),
        ),
      ],
    );
  }
}
