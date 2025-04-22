import 'package:flutter/material.dart';
import '../widgets/Botoes.dart';
import '../widgets/LinguagensLista.dart';

class TelaResponsiva extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool emPaisagem = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Layouts'),
        backgroundColor: Colors.grey[900],
      ),
      body: emPaisagem
          ? Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Cheetah Coding',
                        style: TextStyle(fontSize: 24),
                      ),
                      SizedBox(height: 20),
                      Botoes(),
                    ],
                  ),
                ),
                Expanded(
                  child: LinguagensLista(),
                ),
              ],
            )
          : Column(
              children: [
                SizedBox(height: 20),
                Text(
                  'Cheetah Coding',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 20),
                Botoes(),
                SizedBox(height: 20),
                Expanded(child: LinguagensLista()),
              ],
            ),
    );
  }
}
