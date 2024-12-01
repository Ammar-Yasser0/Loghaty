import 'package:flutter/material.dart';
import 'package:loghaty/utils/constants/colors.dart';
import 'package:loghaty/utils/constants/sizes.dart';

import 'statistic_item.dart';

class QuizStatisticsCard extends StatelessWidget {
  const QuizStatisticsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: FSizes.md, horizontal: FSizes.sm),
        child: Column(
          children: [
            const Row(
              children: [
                // Statistics item
                Flexible(
                  flex: 1,
                  child: StatisticsItem(
                    title: 'عدد الأسئلة',
                    number: 20,
                    color: FColors.primary,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: StatisticsItem(
                    title: 'الصحيحة',
                    number: 5,
                    color: FColors.accent,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: StatisticsItem(
                    title: 'غير صحيحة',
                    number: 15,
                    color: Colors.red,
                  ),
                ),
              ],
            ),

            SizedBox(height: FSizes.spaceBtwItems),

            // This button to turn the user back to the screen that he cames from
            MaterialButton(
              onPressed: () {
                // TODO: Go back to the priveous page (quiz, subjects, levels)
              },
              color: FColors.primary,
              textColor: FColors.textWhite,
              minWidth: MediaQuery.of(context).size.width,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Text('عد إلى السابق'),
            )
            // TODO: button to go back
          ],
        ),
      ),
    );
  }
}
