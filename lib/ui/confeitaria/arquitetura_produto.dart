import 'dart:io';
import 'package:app_desafio/database/database.dart';
import 'package:app_desafio/ui/_core/app_colors.dart';
import 'package:flutter/material.dart';

class ArquiteturaProduto extends StatelessWidget {
  final Produto produto;
  const ArquiteturaProduto({super.key, required this.produto});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          height: 90,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: produto.imagens!.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Image.file(
                  File(produto.imagens![index]),
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              produto.nome,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: AppColors.mainColor,
              ),
            ),
            Text(
              'R\$ ${produto.valor.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 20,
                color: AppColors.mainColor,
              ),
            ),
            Text(
              produto.descricao,
              style: TextStyle(
                fontSize: 18,
                color: AppColors.mainColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
