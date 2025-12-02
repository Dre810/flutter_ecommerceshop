import 'package:flutter/material.dart';
import './screens/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue),

      home: HomeScreen(),
    ),
  );
}