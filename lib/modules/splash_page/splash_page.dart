import 'package:flutter/material.dart';
import 'package:minicurso/modules/selecoes_page/selecoes_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  void navegarParaProxima({required BuildContext context})  async {
    await Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return SelecoesPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    navegarParaProxima(context: context);
    return Scaffold(
      body: Container(
        color: Color(0xFFFFDFDFD),
        child: Center(child: Image.asset("assets/images/logo.png")),
      ),
    );
  }
}