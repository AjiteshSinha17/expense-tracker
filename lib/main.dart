import 'package:flutter/material.dart';
import 'package:expense_tracker/widget/expenses.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 55, 255, 98));

var kdarkcolorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 34, 17, 95));

void main() {
  runApp(MaterialApp(
    darkTheme: ThemeData.dark().copyWith(
      useMaterial3: true,
      colorScheme: kdarkcolorScheme,
      appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: kColorScheme.onSecondaryContainer,
        foregroundColor: kColorScheme.secondary,
        elevation: 5,
        actionsIconTheme: const IconThemeData(color: Colors.amber, size: 28),
      ),
      cardTheme: const CardTheme().copyWith(
        color: kdarkcolorScheme.primaryContainer,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: kdarkcolorScheme.primaryContainer,
            foregroundColor: kdarkcolorScheme.onPrimaryContainer),
      ),
    ),
    theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onSecondaryContainer,
          foregroundColor: kColorScheme.secondary,
          elevation: 5,
          actionsIconTheme: const IconThemeData(color: Colors.amber, size: 28),
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.primaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          backgroundColor: kColorScheme.primaryContainer,
        )),
        textTheme: ThemeData().textTheme.copyWith(
            // it apply some default theme of flutter/ given theme by a given particular color
            titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorScheme.onPrimaryContainer,
                fontSize: 14))),
    themeMode: ThemeMode.system,
    home: const Expenses(),
  ));
}
