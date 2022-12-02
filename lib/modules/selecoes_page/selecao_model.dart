import '../jogadores/jogador_model.dart';

class Selecao {
  String? id;
  String? nome;
  String? bandeira;
  List<Jogadores>? jogadores;

  Selecao({this.id, this.nome, this.bandeira, this.jogadores});

  Selecao.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    bandeira = json['bandeira'];
    if (json['jogadores'] != null) {
      jogadores = <Jogadores>[];
      json['jogadores'].forEach((v) {
        jogadores!.add(new Jogadores.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['bandeira'] = this.bandeira;
    if (this.jogadores != null) {
      data['jogadores'] = this.jogadores!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}