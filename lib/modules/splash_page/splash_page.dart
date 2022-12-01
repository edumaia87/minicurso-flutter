import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFFFDFDFD),
        child: Center(child: Image.asset("assets/images/logo.png")),
      )
    );
  }
}