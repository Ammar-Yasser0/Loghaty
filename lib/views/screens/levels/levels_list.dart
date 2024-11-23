// LevelsList Widget that build the list of levels
import 'package:flutter/material.dart';
import 'package:loghaty/utils/constants/sizes.dart';

import 'level_item.dart';


// This class build the levels list
class LevelsList extends StatelessWidget {
  const LevelsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: FSizes.sm,
        vertical: FSizes.md,
      ),
      itemCount: 4, // Change this to the real list.length 
      itemBuilder: (context, index) {
        return LevelItem(
          index: index,
        );
      },
    );
  }
}