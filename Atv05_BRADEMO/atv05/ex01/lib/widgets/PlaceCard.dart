import 'package:flutter/material.dart';
import '../models/ModeloDados.dart';

class PlaceCard extends StatelessWidget {
  final Lugar lugar;

  const PlaceCard({super.key, required this.lugar});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Image.network(
            lugar.imagemUrl,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            width: double.infinity,
            color: Colors.black.withOpacity(0.4),
            padding: const EdgeInsets.all(8),
            child: Text(
              '${lugar.titulo}\n${lugar.subtitulo}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
