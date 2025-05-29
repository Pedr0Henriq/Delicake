import 'package:app_desafio/confectionery/bloc/confectionery_bloc.dart';
import 'package:app_desafio/confectionery/view/confectionery_view.dart';
import 'package:app_desafio/database/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfectioneryPage extends StatelessWidget {
  final int id;
  const ConfectioneryPage({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ConfectioneryBloc(context.read<AppDatabase>())..add(ConfectioneryEvent.started(id)),
      child: const ConfectioneryView(), );
  }
}