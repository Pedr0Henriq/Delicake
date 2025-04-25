import 'dart:io';
import 'package:app_desafio/database/database.dart';
import 'package:app_desafio/ui/_core/app_colors.dart';
import 'package:flutter/material.dart';


/*Esse widget é a maneira que organizo cada produto pra ser apresentado na tela da confeitaria */

class ArquiteturaProduto extends StatefulWidget {
  final Produto produto;
  const ArquiteturaProduto({super.key, required this.produto});

  @override
  State<ArquiteturaProduto> createState() => _ArquiteturaProduto();
}

class _ArquiteturaProduto extends State<ArquiteturaProduto> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 20.0,
      children: [
        Image.file(
          File(widget.produto.imagem!),
          width: 90,
          height: 90,
          fit: BoxFit.cover,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.produto.nome,style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: AppColors.mainColor,
            ),),
            Text('R\$ ${widget.produto.valor.toString()}',style: TextStyle(
              fontSize: 20,
              color: AppColors.mainColor,
            ),),
            Text(widget.produto.descricao,style: TextStyle(
              fontSize: 18,
              color: AppColors.mainColor,
            ),)
          ],
        )
      ],
    );
  }
}