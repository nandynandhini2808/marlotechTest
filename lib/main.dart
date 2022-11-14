import 'package:flutter/material.dart';
import 'package:teams/pages/main_screen.dart';
import 'package:teams/theme/theme_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      themeMode: ThemeMode.system,
      home: const MainScreen(),
    );
  }
}
