import 'package:flutter/material.dart';
import 'package:minicurso/modules/splash_page/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashPage());
  }
}

/*class _HomePage extends State<HomePage> {
  @override
  int contador = 0;

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text("FLUTTER", style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: Colors.black45
          ),
          child: ContadorWidget()
        ),
      );
  }

}

class ContadorWidget extends StatefulWidget {
  const ContadorWidget({super.key});

  @override
  State<ContadorWidget> createState() => _ContadorWidgetState();
}

class _ContadorWidgetState extends State<ContadorWidget> {
  @override
  int contador = 0;
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Contador: $contador", style: TextStyle(
        color: Colors.white,
        fontSize: 40
      ),),
      ElevatedButton(
        onPressed: () {
        setState(() {
          contador++;
        });
        print(contador);
      }, child: Text("Incrementar"),
      )
    ],); 
  }
}*/
