import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../database/database.dart';

part 'map_event.dart';
part 'map_state.dart';
part 'map_bloc.freezed.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc(this._db) : super(const MapState()) {
    on<_Started>(_onStarted, transformer: droppable());
  }

  final AppDatabase _db;

  Future<void> _onStarted(_Started event, Emitter<MapState> emit) async {
    final stream = _db.confeitariasDao.getAllConfeitarias();
    await for (final confeitarias in stream) {
      emit(state.copyWith(confeitarias: confeitarias));
    }
  }
}
