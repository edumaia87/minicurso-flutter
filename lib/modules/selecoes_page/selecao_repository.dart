import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:minicurso/modules/selecoes_page/selecao_model.dart';

import '../../const/base_url.dart';

class SelecaoRepository {
  var uri = Uri.parse(BaseUrl.baseUrl);
  var client = http.Client();

  Future get() async {
    try {
      List<Selecao> listaSelecoes = [];
      final response = await client.get(uri);
      final selecoesMap = jsonDecode(response.body);

      selecoesMap.forEach((selecao) => {
        listaSelecoes.add(Selecao.fromJson(selecao))
      });

      return listaSelecoes;
    } catch (e) {
      return e;
    }
  
  }

}