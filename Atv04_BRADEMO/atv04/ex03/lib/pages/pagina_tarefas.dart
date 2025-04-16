import 'package:flutter/material.dart';
import '../widgets/item_tarefa.dart';
import '../widgets/botao_visualizar_concluidas.dart';

class PaginaTarefas extends StatefulWidget {
  const PaginaTarefas({super.key});

  @override
  State<PaginaTarefas> createState() => _PaginaTarefasState();
}

class _PaginaTarefasState extends State<PaginaTarefas> {
  List<bool> _listaTarefasConcluidas = List.generate(5, (_) => false);

  void _mostrarTarefasConcluidas() {
    final tarefasConcluidas = _listaTarefasConcluidas
        .asMap()
        .entries
        .where((entry) => entry.value)
        .map((entry) => 'Tarefa ${entry.key + 1}')
        .toList();

    final mensagem = tarefasConcluidas.isEmpty
        ? 'Nenhuma tarefa concluída.'
        : 'Concluídas: ${tarefasConcluidas.join(', ')}';

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Tarefas Concluídas'),
        content: Text(mensagem),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Fechar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tarefasRestantes =
        _listaTarefasConcluidas.where((concluida) => !concluida).length;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Lista de Tarefas"),
      ),
      body: Column(
        children: [
          BotaoVisualizarConcluidas(aoPressionar: _mostrarTarefasConcluidas),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Você tem $tarefasRestantes tarefa(s) pendente(s)"),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _listaTarefasConcluidas.length,
              itemBuilder: (context, index) {
                return ItemTarefa(
                  index: index,
                  concluida: _listaTarefasConcluidas[index],
                  aoAlterar: (valor) {
                    setState(() {
                      _listaTarefasConcluidas[index] = valor!;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text("Aviso"),
              content: const Text("Você está no App de Tarefas"),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("OK"),
                ),
              ],
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
