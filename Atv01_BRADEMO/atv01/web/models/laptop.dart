class Laptop {
  int id;
  String nome;
  int ram;

  Laptop(this.id, this.nome, this.ram);

  void exibirDetalhes() {
    print("ID: $id, Nome: $nome, RAM: ${ram}GB");
  }
}