import 'package:flutter/material.dart';
import 'pages/pagina_formulario.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Formulário Flutter',
      debugShowCheckedModeBanner: false,
      home: PaginaFormulario(),
    );
  }
}
