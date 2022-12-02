import 'package:flutter_test/flutter_test.dart';
import 'package:minicurso/modules/selecoes_page/selecao_repository.dart';

void main() {
  test("description", (() async {
    final repository = SelecaoRepository();
    final response = await repository.get();
    
    print(response);
  }));
}