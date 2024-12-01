import 'package:flutter/material.dart';
import 'package:loghaty/utils/constants/sizes.dart';

class StatisticsItem extends StatelessWidget {
  const StatisticsItem(
      {super.key,
      required this.title,
      required this.number,
      required this.color});

  final String title;
  final int number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(FSizes.sm),
      margin: const EdgeInsets.all(FSizes.xs),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Column(
        children: [
          FittedBox(
            child: Text(
              number.toString(),
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.white),
            ),
          ),
          SizedBox(height: FSizes.sm),
          FittedBox(
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}