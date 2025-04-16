import 'package:flutter/material.dart';

class FabAcoes extends StatelessWidget {
  final Function(String) aoSelecionar;

  const FabAcoes({Key? key, required this.aoSelecionar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton(
          heroTag: 'fab1',
          mini: true,
          onPressed: () => aoSelecionar('e-mail'),
          child: Icon(Icons.email),
        ),
        SizedBox(height: 8),
        FloatingActionButton(
          heroTag: 'fab2',
          mini: true,
          onPressed: () => aoSelecionar('ligação'),
          child: Icon(Icons.call),
        ),
        SizedBox(height: 8),
        FloatingActionButton(
          heroTag: 'fab3',
          mini: true,
          onPressed: () => aoSelecionar('mensagem'),
          child: Icon(Icons.message),
        ),
      ],
    );
  }
}
