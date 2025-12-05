import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starter_project/providers/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final themeProvider = Provider.of<ThemeProvider>(context);
    return  Scaffold(
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Shop yetu",
        
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50,),

            ElevatedButton(onPressed: (){}, child: Text("Buy Now")),

            SwitchListTile(
              title: Text((themeProvider.getIsDarkTheme ?? false) ? "Dark Theme" : "Light Theme"),
              value: themeProvider.getIsDarkTheme ?? false,
              onChanged: (value) {
                themeProvider.setDarkTheme(value);
                print('Theme State: ${themeProvider.getIsDarkTheme}');
              },
            ),
          ],
        ),
      ),
    );
  }
}