import 'package:flutter/material.dart';

class ItemTarefa extends StatelessWidget {
  final int index;
  final bool concluida;
  final ValueChanged<bool?> aoAlterar;

  const ItemTarefa({
    super.key,
    required this.index,
    required this.concluida,
    required this.aoAlterar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      child: Card(
        color: Colors.amberAccent,
        child: ListTile(
          title: Text("Tarefa ${index + 1}"),
          trailing: Checkbox(
            value: concluida,
            onChanged: aoAlterar,
          ),
        ),
      ),
    );
  }
}
