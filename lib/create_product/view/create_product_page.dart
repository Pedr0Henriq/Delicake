import 'package:app_desafio/create_product/create_product_bloc.dart';
import 'package:app_desafio/create_product/view/create_product_view.dart';
import 'package:app_desafio/database/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateProductPage extends StatelessWidget {
 final int id;
  const  CreateProductPage({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) {
      // Assuming CreateProductBloc is defined and imported
      return CreateProductBloc(context.read<AppDatabase>(),id)
        ..add(const CreateProductEvent.started());
    }, child: const CreateProductView());
  }
}