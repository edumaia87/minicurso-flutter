import 'package:flutter/cupertino.dart';
import 'package:minicurso/modules/selecoes_page/selecao_model.dart';
import 'package:minicurso/modules/selecoes_page/selecao_repository.dart';
import 'package:minicurso/modules/selecoes_page/selecao_state.dart';

class SelecaoController {

  final stateNotifier = ValueNotifier<SelecaoState>(SelecaoState.empty);
  final repository = SelecaoRepository();
  List<Selecao> selecoes = [];

  void get() async {
    stateNotifier.value = SelecaoState.loading;
    final response = await repository.get();
    if (response.runtimeType == List<Selecao>) {
      selecoes = response;
      stateNotifier.value = SelecaoState.success;
      return;
    }

    stateNotifier.value = SelecaoState.error;
  }

}