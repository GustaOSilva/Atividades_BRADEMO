import 'package:flutter/material.dart';
import '../widgets/MeuWidget.dart';

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MeuWidget(),
      ),
    );
  }
}
