import 'package:flutter/material.dart';
import '../widgets/fab_acoes.dart';

class PaginaInicial extends StatefulWidget {
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  int _indiceSelecionado = 0;
  bool _fabExpandido = false;
  String _mensagemFab = '';

  void _selecionarAba(int indice) {
    setState(() {
      _indiceSelecionado = indice;
      _mensagemFab = '';
    });
  }

  void _alternarFabMenu() {
    setState(() {
      _fabExpandido = !_fabExpandido;
    });
  }

  void _aoPressionarAcaoFab(String acao) {
    setState(() {
      _mensagemFab = 'FAB: $acao';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Barra Inferior com FAB')),
      body: Center(
        child: Text(
          _mensagemFab.isNotEmpty
              ? _mensagemFab
              : 'TAB: ${_indiceSelecionado + 1}',
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_fabExpandido) FabAcoes(aoSelecionar: _aoPressionarAcaoFab),
          FloatingActionButton(
            onPressed: _alternarFabMenu,
            child: Icon(_fabExpandido ? Icons.close : Icons.add),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () => _selecionarAba(0),
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () => _selecionarAba(1),
              ),
              SizedBox(width: 40), // espaço pro FAB
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () => _selecionarAba(2),
              ),
              IconButton(
                icon: Icon(Icons.info),
                onPressed: () => _selecionarAba(3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
