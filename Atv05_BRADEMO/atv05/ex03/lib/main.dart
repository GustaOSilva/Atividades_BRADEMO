import 'package:flutter/material.dart';
import 'screen/TelaInicial.dart';

void main() {
  runApp(AppPrincipal());
}

class AppPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: TelaInicial(),
    );
  }
}
