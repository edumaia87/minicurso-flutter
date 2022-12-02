import 'package:flutter/material.dart';
import 'package:minicurso/modules/selecoes_page/selecao_controller.dart';

import 'lista_selecao_widget.dart';

class ListViewWidget extends StatelessWidget {
  final SelecaoController controller;
  const ListViewWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.selecoes.length,
      itemBuilder: (context, index) {
        return ListaSelecaoWidget(
          onTap: () {
            controller.selecoes[index].jogadores!.forEach(
              (e) => print(
                e.nome.toString() + " " + e.segundoNome.toString(),
              ),
            );
          },
          nome: controller.selecoes[index].nome.toString().toUpperCase(),
          bandeira: controller.selecoes[index].bandeira.toString(),
        );
      });
  }
}
