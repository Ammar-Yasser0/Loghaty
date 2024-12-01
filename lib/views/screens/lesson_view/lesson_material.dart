import 'package:flutter/material.dart';

class LessonMaterial extends StatelessWidget {
  const LessonMaterial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 2 / 5,
      decoration: const BoxDecoration(
        color: Colors.grey,
      ),
      child: const Text('Video is here'),
    );
  }
}