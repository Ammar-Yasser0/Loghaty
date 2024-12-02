import 'package:flutter/material.dart';
import 'package:loghaty/utils/constants/colors.dart';
import 'package:loghaty/utils/constants/sizes.dart';

// We will have more than one level for exercises and this class for the screen
// that shows the levels
class QuizLevels extends StatelessWidget {
  const QuizLevels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('التدريبات'),
        centerTitle: true,
      ),
      body: QuizLevelsList(),
    );
  }
}


// This is the list of the quiz levels
class QuizLevelsList extends StatelessWidget {
  const QuizLevelsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: FSizes.sm),
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return QuizLevelsListItem(
          title: 'المستوى ${index + 1}',
        );
      },
    );
  }
}

// Quiz levels list item for each item in the list 
class QuizLevelsListItem extends StatelessWidget {
  const QuizLevelsListItem({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          minTileHeight: 40,
          contentPadding: EdgeInsets.symmetric(horizontal: FSizes.xl),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios, size: 15),
          onTap: () {
            // TODO: Move to Quiz screen
          },
        ),
        const Divider(color: FColors.secondary),
      ],
    );
  }
}
