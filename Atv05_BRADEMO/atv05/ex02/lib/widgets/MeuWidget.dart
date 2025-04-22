import 'package:flutter/material.dart';

class MeuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.lightBlueAccent,
      child: const Center(
        child: Text(
          'Widget',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
