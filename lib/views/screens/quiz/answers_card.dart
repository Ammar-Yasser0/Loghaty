import 'package:flutter/material.dart';
import 'package:loghaty/utils/constants/sizes.dart';

class AnswersCard extends StatelessWidget {
  const AnswersCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), // Set border radius here
      ),
      child: const Padding(
        padding: EdgeInsets.all(FSizes.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnswerButton(),
            SizedBox(height: FSizes.spaceBtwItems),
            AnswerButton(),
            SizedBox(height: FSizes.spaceBtwItems),
            AnswerButton(),
            SizedBox(height: FSizes.spaceBtwItems),
            AnswerButton(),
          ],
        ),
      ),
    );
  }
}


// AnswerButton to show the answer and I can select it and change the color of
// selected one with InkWell
class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: FSizes.sm),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            width: 1,
            color: Colors.grey,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26, // Shadow color with opacity
              blurRadius: 4, // Smoothness of the shadow
              spreadRadius: 1, // How far the shadow spreads
              offset: Offset(
                0,
                0,
              ), // Vertical elevation-like effect
            ),
          ],
        ),
        child: Text('نوع اسم الفعل هيهات'),
      ),
    );
  }
}
