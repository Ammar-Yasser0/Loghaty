import 'package:flutter/material.dart';
import 'package:loghaty/utils/constants/sizes.dart';
import 'package:loghaty/views/widgets/progress_bars/linear_bar.dart';

// This is The widget that shows the correct and wrong questions number
// and shows the time for it
class QuizQuestionsInfo extends StatelessWidget {
  const QuizQuestionsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // True questions counter
        QuestionsCounter(),

        // TODO: time animation circular progress bar
        // Time for the question
        CircleAvatar(
          radius: 20,
          child: Text('45'),
        ),

        // False questions counter
        Directionality(
          textDirection: TextDirection.ltr,
          child: QuestionsCounter(),
        ),
      ],
    );
  }
}

// If the user solve the question right, I will add 1 to this class 
//and change the value of the progress bar to fit that
class QuestionsCounter extends StatelessWidget {
  const QuestionsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // This is the number of questions counter
        Text(
          '00',
          style: TextStyle(color: Colors.green),
        ),

        // This is the progress bar
        Padding(
          padding: EdgeInsets.symmetric(horizontal: FSizes.sm),
          // Progress will be caculated with a function in utils
          child: SizedBox(
            width: 60,
            child: LinearProgressWithoutTitle(progress: 0.4),
          ),
        ),
      ],
    );
  }
}