import 'package:flutter/material.dart';
import 'package:expense_tracker/widget/expenses.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 164, 139, 234));

void main() {
  runApp(MaterialApp(
    theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme), // it apply some default theme of flutter
    home: const Expenses(),
  ));
}
