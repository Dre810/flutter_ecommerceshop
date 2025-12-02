import 'package:flutter/material.dart';
import 'package:starter_project/constants/app_colors.dart';
import './screens/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.lightScaffoldColor),

      home: HomeScreen(),
    ),
  );
}