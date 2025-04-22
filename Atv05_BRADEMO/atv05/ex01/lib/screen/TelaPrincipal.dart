import 'package:flutter/material.dart';
import '../models/ModeloDados.dart';
import '../widgets/PlaceCard.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Lugar> lugares = [
      Lugar(
        titulo: 'Yago Oproprio',
        subtitulo: 'RAP',
        imagemUrl: 'https://cdn-images.dzcdn.net/images/artist/3b296c8af5eb772ad214b1993bc58f43/1900x1900-000000-80-0-0.jpg',
      ),
      Lugar(
        titulo: 'Febre90s',
        subtitulo: 'RAP',
        imagemUrl: 'https://res.cloudinary.com/shotgun/image/upload/c_limit,w_750/fl_lossy/f_auto/q_auto/production/artworks/artists/Febre90s.jpg',
      ),
      Lugar(
        titulo: 'Caio Ocean',
        subtitulo: 'RAP',
        imagemUrl: 'https://akamai.sscdn.co/uploadfile/letras/fotos/f/e/6/8/fe68437288f35aea9fc4a22626838ff5.jpg',
      ),
      Lugar(
        titulo: 'Puma PJL',
        subtitulo: 'RAP',
        imagemUrl: 'https://cdn-images.dzcdn.net/images/artist/007e138ae70b01ab53f47040e6e118d7/1900x1900-000000-80-0-0.jpg',
      ),
      Lugar(
        titulo: 'SonoTWS',
        subtitulo: 'RAP',
        imagemUrl: 'https://yt3.googleusercontent.com/9hvSL4mSXHIa6MVLCxt-CGUH1mv9CJ5JrGccU5Mk4yxbnBI3odnKeH_UGHlT1IHMvqIuGrq04A=s900-c-k-c0x00ffffff-no-rj',
      ),
      Lugar(
        titulo: 'BK',
        subtitulo: 'RAP',
        imagemUrl: 'https://www.cnnbrasil.com.br/wp-content/uploads/sites/12/2022/11/image1-e1668876561667.jpg?w=1200&h=1200&crop=1',
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Rap Underground')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          children: lugares.map((lugar) => PlaceCard(lugar: lugar)).toList(),
        ),
      ),
    );
  }
}
