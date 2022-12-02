import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minicurso/const/base_url.dart';
import 'package:minicurso/const/text_styles.dart';
import 'package:minicurso/modules/selecoes_page/selecao_controller.dart';
import 'package:minicurso/modules/selecoes_page/selecao_state.dart';
import 'package:minicurso/modules/selecoes_page/widgets/list_view_widget.dart';
import 'package:minicurso/modules/selecoes_page/widgets/lista_selecao_widget.dart';

class SelecoesPage extends StatefulWidget {
  const SelecoesPage({super.key});

  @override
  State<SelecoesPage> createState() => _SelecoesPageState();
}

class _SelecoesPageState extends State<SelecoesPage> {
  final controller = SelecaoController();

  @override
  void initState() {
    controller.get();
    controller.stateNotifier.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8E0A31),
        title: Text("PAÍSES"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 23, horizontal: 10),
        child: ValueListenableBuilder(
            valueListenable: controller.stateNotifier,
            builder: (context, value, _) {
              if (controller.stateNotifier.value == SelecaoState.loading) {
                return Center(
                    child: CircularProgressIndicator(
                  color: Color(0xff8E0A31),
                ));
              } else if (controller.stateNotifier.value ==
                  SelecaoState.success) {
                return ListViewWidget(
                  controller: controller,
                );
              } else {
                return Container(
                  child: Center(
                    child: Text("Deu erro"),
                  ),
                );
              }

              return Container(
                child: Text("Carregou"),
              );
            }),
      ),
      backgroundColor: Color(0xffFDFDFD),
    );
  }
}
