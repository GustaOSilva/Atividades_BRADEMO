import 'package:flutter/material.dart';
import 'pages/pagina_tarefas.dart';

void main() {
  runApp(const MeuAppDeTarefas());
}

class MeuAppDeTarefas extends StatelessWidget {
  const MeuAppDeTarefas({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaginaTarefas(),
    );
  }
}
