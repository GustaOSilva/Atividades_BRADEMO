import 'package:flutter/material.dart';

class BotaoVisualizarConcluidas extends StatelessWidget {
  final VoidCallback aoPressionar;

  const BotaoVisualizarConcluidas({super.key, required this.aoPressionar});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ElevatedButton(
        onPressed: aoPressionar,
        child: const Text("Visualizar Tarefas Concluídas"),
      ),
    );
  }
}
