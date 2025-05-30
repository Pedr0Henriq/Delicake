import 'package:app_desafio/create/bloc/create_bloc.dart';
import 'package:app_desafio/create/view/edit/view.dart';
import 'package:app_desafio/database/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) =>
      CreateBloc(context.read<AppDatabase>())..add(CreateEvent.started()),
      child: EditView(),);
      
  }
}