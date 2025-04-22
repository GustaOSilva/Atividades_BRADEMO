import 'package:flutter/material.dart';
import '../widgets/MeuWidget.dart';
import '../widgets/WidgetComTemaAmarelo.dart';

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: MeuWidget(),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: WidgetComTemaAmarelo(),
            ),
          ],
        ),
      ),
    );
  }
}
