import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:loghaty/views/screens/courses/courses.dart';

import 'views/screens/lesson_view/lesson_view.dart';
import 'views/screens/lessons/lessons.dart';
import 'views/screens/levels/levels.dart';
import 'utils/theme/theme.dart';
import 'views/screens/prize/prize.dart';
import 'views/screens/quiz/quiz_screen.dart';
import 'views/screens/quiz_levels/quiz_levels.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('ar'), Locale('en')],
      path: 'assets/translations',
      fallbackLocale: const Locale('ar'),
      child: const MyApp(),
    ),
  );
  // SystemChrome.setSystemUIOverlayStyle(
  //   const SystemUiOverlayStyle(
  //     statusBarColor: FColors.grey, // Set the background color of the status bar
  //     statusBarIconBrightness: Brightness.dark, // Brightness of icons (light or dark)
  //   ),
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'لغتي',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: const Locale('ar'),
      themeMode: ThemeMode.light,
      theme: FAppTheme.lightTheme,
      darkTheme: FAppTheme.darkTheme,
      home: const QuizLevels(),
    );
  }
}


