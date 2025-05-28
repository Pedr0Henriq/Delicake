import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../database/database.dart';
import '../bloc/map_bloc.dart';
import 'view.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          MapBloc(context.read<AppDatabase>())..add(const MapEvent.started()),
      child: const MapView(),
    );
  }
}
