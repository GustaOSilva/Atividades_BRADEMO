import 'package:flutter/material.dart';

class LinguagensLista extends StatelessWidget {
  final List<String> linguagens = ['Dart', 'JavaScript', 'PHP', 'C++'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: linguagens.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.grey[850],
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                linguagens[index],
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        );
      },
    );
  }
}
