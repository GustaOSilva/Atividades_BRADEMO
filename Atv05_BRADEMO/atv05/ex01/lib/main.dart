import 'package:flutter/material.dart';
import 'screen/TelaPrincipal.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo GridView',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: const TelaPrincipal(),
      debugShowCheckedModeBanner: false,
    );
  }
}
