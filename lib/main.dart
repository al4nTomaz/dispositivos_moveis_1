import 'package:flutter/material.dart';
import 'ui/home.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Home(),
    theme: ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.purple,
      ),
    ),
  ));
}
