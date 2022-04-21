class BuscaCep {
  String? logradouro;
  String? bairro;
  String? localidade;

  BuscaCep({this.logradouro, this.bairro, this.localidade});

  BuscaCep.fromJson(Map<String, dynamic> json) {
    logradouro = json['logradouro'];
    bairro = json['bairro'];
    localidade = json['localidade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['logradouro'] = this.logradouro;
    data['bairro'] = this.bairro;
    data['localidade'] = this.localidade;
    return data;
  }
}
