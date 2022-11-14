import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    primaryColor: Colors.black,
    colorScheme: ColorScheme.dark(),
    iconTheme: IconThemeData(color: Colors.white, opacity: 0.8),
  );

  static final lightTheme = ThemeData(
    primaryColor: Colors.white,
    colorScheme: ColorScheme.light(),
    iconTheme: IconThemeData(color: Colors.black, opacity: 0.8),
  );
}
