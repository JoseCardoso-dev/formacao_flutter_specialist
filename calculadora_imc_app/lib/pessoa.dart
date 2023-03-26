class Pessoa {
  late String _nome;
  late double _peso;
  late double _altura;

  Pessoa(this._nome, this._peso, this._altura);

  void setNome(String nome) => _nome = nome;
  void setPeso(double peso) => _peso = peso;
  void setAltura(double altura) => _altura = altura;

  String getNome() {
    return _nome;
  }

  double getPeso() {
    return _peso;
  }

  double getAltura() {
    return _altura;
  }
}
