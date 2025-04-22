import 'package:flutter/material.dart';

class Botoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      runSpacing: 10,
      alignment: WrapAlignment.center,
      children: [
        ElevatedButton(onPressed: () {}, child: Text('BUTTON 1')),
        ElevatedButton(onPressed: () {}, child: Text('BUTTON 2')),
      ],
    );
  }
}
