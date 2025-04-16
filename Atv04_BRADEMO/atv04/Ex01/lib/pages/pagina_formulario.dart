import 'package:flutter/material.dart';
import '../widgets/campo_texto.dart';

class PaginaFormulario extends StatefulWidget {
  const PaginaFormulario({super.key});

  @override
  State<PaginaFormulario> createState() => _EstadoPaginaFormulario();
}

class _EstadoPaginaFormulario extends State<PaginaFormulario> {
  final _chaveFormulario = GlobalKey<FormState>();

  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorTelefone = TextEditingController();
  final TextEditingController _controladorNascimento = TextEditingController();

  void _mostrarSnackBar() {
    final nome = _controladorNome.text;
    final telefone = _controladorTelefone.text;
    final nascimento = _controladorNascimento.text;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Nome: $nome | Telefone: $telefone | Nascimento: $nascimento'),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  @override
  void dispose() {
    _controladorNome.dispose();
    _controladorTelefone.dispose();
    _controladorNascimento.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Formulário Flutter',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: Form(
            key: _chaveFormulario,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CampoTexto(
                  controller: _controladorNome,
                  label: 'Nome',
                  icon: Icons.person,
                ),
                const SizedBox(height: 16),
                CampoTexto(
                  controller: _controladorTelefone,
                  label: 'Telefone',
                  icon: Icons.phone,
                  tipoTeclado: TextInputType.phone,
                ),
                const SizedBox(height: 16),
                CampoTexto(
                  controller: _controladorNascimento,
                  label: 'Data de nascimento',
                  icon: Icons.calendar_today,
                  tipoTeclado: TextInputType.datetime,
                ),
                const SizedBox(height: 32),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[400],
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                    ),
                    onPressed: _mostrarSnackBar,
                    child: const Text('Enviar'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
