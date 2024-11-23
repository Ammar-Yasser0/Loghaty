import 'package:flutter/material.dart';
import 'levels_list.dart';

// This screen for let user choose the level of Arabic language.
class LevelsScreen extends StatelessWidget {
  const LevelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('المستويات'),
        centerTitle: true,
      ),
      // Arabic Levels list
      body: const LevelsList(),
    );
  }
}


