import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starter_project/constants/app_colors.dart';
import 'package:starter_project/providers/theme_provider.dart';
import './screens/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) {
          return ThemeProvider();
        },),
      ],
      child: Consumer<ThemeProvider>(
        
    builder: (context, value, child){
      return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        home: HomeScreen(),
      );
    }

      ),
    ),
  );
}