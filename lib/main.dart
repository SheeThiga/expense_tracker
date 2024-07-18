import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kColourScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        colorScheme: kColourScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColourScheme.onPrimaryContainer,
          foregroundColor: kColourScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColourScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColourScheme.primaryContainer,
            foregroundColor: kColourScheme.onPrimaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: kColourScheme.onSecondaryContainer,
              ),
            ),
      ),
      home: const Expenses(),
    ),
  );
}
