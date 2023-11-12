import 'package:flutter/material.dart';

final theme = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(219, 34, 80, 145),
  primarySwatch: Colors.yellow,
  dividerTheme: const DividerThemeData(color: Color.fromARGB(255, 13, 255, 0)),
  listTileTheme: const ListTileThemeData(
    iconColor: Colors.green,
  ),
  appBarTheme: const AppBarTheme(
      backgroundColor: Colors.orange,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      )),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
    labelMedium: TextStyle(color: Colors.green),
  ),
);
