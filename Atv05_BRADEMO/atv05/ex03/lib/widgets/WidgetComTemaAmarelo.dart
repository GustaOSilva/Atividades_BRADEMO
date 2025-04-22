import 'package:flutter/material.dart';

class WidgetComTemaAmarelo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        scaffoldBackgroundColor: Colors.yellow,
      ),
      child: Builder(
        builder: (context) {
          return Container(
            width: 100,
            height: 100,
            color: Colors.amberAccent,
            child: const Center(
              child: Text(
                'Widget',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}
