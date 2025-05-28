import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../database/database.dart';
import '../bloc/create_bloc.dart';
import 'view.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              CreateBloc(context.read<AppDatabase>())
                ..add(const CreateEvent.started()),
      child: const CreateView(),
    );
  }
}
