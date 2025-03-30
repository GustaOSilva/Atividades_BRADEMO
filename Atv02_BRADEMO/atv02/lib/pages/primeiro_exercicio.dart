import 'package:flutter/material.dart';

class PrimeiroExercicio extends StatelessWidget{
  const PrimeiroExercicio({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter é legal', 
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.green,
      ),

      body: Column(
        children: [
          Padding(
            
            padding: EdgeInsets.only(top: 50, left: 50),
            
            child: Container(
            padding: EdgeInsets.all(  20),
            color: Colors.red,
            
            child: const Text(
              'Olá, Mundo!',
              style: TextStyle(color: Colors.white),
            )
            
            )
          ),
        ],
      ),
  );
  }
}
