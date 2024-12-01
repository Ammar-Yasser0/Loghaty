import 'package:flutter/material.dart';
import 'package:loghaty/utils/constants/sizes.dart';

import 'questions_info.dart';

class QuestionsInfoCard extends StatelessWidget {
  const QuestionsInfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Set border radius here
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              QuizQuestionsInfo(),
              SizedBox(height: 1.5 * FSizes.spaceBtwItems),
              QuestionBody(),
            ],
          ),
        ),
      ),
    );
  }
}

// Question body to show the question
class QuestionBody extends StatelessWidget {
  const QuestionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('حدد المبتدأ والخبر في ما يلي');
  }
}


