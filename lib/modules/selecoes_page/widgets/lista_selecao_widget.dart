import 'package:flutter/material.dart';

import '../../../const/base_url.dart';
import '../../../const/text_styles.dart';

class ListaSelecaoWidget extends StatelessWidget {
  final String nome;
  final String bandeira;
  final VoidCallback onTap;
  const ListaSelecaoWidget({super.key, required this.nome, required this.bandeira, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: ListTile(
          leading: Container(
            width: 50,
            height: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                "${BaseUrl.baseUrl}/${bandeira}",
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
              nome,
              style: TextStyles.nomePaises),
        ),
      ),
    );
  }
}
