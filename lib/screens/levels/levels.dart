import 'package:flutter/material.dart';
import 'package:loghaty/utils/constants/colors.dart';

// This screen for let user see the levels of Arabic language.
class LevelsScreen extends StatelessWidget {
  const LevelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('المستويات'),
        centerTitle: true,
      ),
      // Arabic Levels list
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        itemCount: 4,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // If user chooses any evaliable level, this function will direct
              // him to the courses screen for selected level
              // TODO: Go to courses page
            },

            // If we locked the level, the color would be as a disabled color 
            // for the level card
            child: Card(
              color:
                  index != 0 ? FColors.secondaryBackground : FColors.secondary,
              child: ListTile(
                title: Text("المستوى الأول"),
                trailing:
                    Icon(index != 0 ? Icons.lock : Icons.arrow_forward_ios),
              ),
            ),
          );
        },
      ),
    );
  }
}
