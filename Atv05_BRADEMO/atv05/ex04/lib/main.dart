import 'package:flutter/material.dart';
import 'screen/TelaResponsiva.dart';

void main() {
  runApp(AppPrincipal());
}

class AppPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
        ),
      ),
      home: TelaResponsiva(),
      debugShowCheckedModeBanner: false,
    );
  }
}
