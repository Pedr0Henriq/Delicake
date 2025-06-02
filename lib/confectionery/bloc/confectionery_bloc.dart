import 'dart:async';

import 'package:app_desafio/database/database.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'confectionery_event.dart';
part 'confectionery_state.dart';
part 'confectionery_bloc.freezed.dart';

class ConfectioneryBloc extends Bloc<ConfectioneryEvent, ConfectioneryState> {
  ConfectioneryBloc(this._db) : super(const ConfectioneryState(status: ConfectioneryStatus.initial())) {
    on<_Started>(_onStarted, transformer: droppable());
    on<_LoadedProducts>(_onLoadedProducts, transformer: droppable());
    on<_DeletedConfectionery>(_onDeletedConfectionery, transformer: droppable());
    on<_DeletedProduct>(_onDeletedProduct, transformer: droppable());
  }

  @override
  Future<void> close() {
    _confeitariaSubscription?.cancel();
    return super.close();
  }

  final AppDatabase _db;
  StreamSubscription<Confeitaria?>? _confeitariaSubscription;
  Future<void> _onStarted(_Started event, Emitter<ConfectioneryState> emit) async{
   await emit.forEach(
      _db.confeitariasDao.getConfeitariaById(event.id), 
      onData: (confeitaria){
        if(confeitaria != null){
          return (state.copyWith(confectionery: confeitaria,status: const ConfectioneryStatus.initial()));
        }
        return state.copyWith(status: ConfectioneryStatus.loadedwithfailure('Confeitaria não encontrada'));
      },
      onError: (erro,stackTrace){
        return state.copyWith(status: ConfectioneryStatus.loadedwithfailure(erro.toString()));
      },);
        }

  Future<void> _onLoadedProducts(_LoadedProducts event, Emitter<ConfectioneryState> emit) async{
    try {
      emit(state.copyWith(status: const ConfectioneryStatus.loading()));
      final stream = _db.produtosDao.getAllProdutos(event.confectionery);
      await for(final produtos in stream){
        emit(state.copyWith(products: produtos, status: ConfectioneryStatus.loadedwithsucess(event.confectionery)));
      }
    } catch (e) {
      emit(state.copyWith(status: ConfectioneryStatus.loadedwithfailure(e.toString())));
    }
  }

  Future<void> _onDeletedConfectionery(_DeletedConfectionery event, Emitter<ConfectioneryState> emit) async{
    try {
      emit(state.copyWith(status: const ConfectioneryStatus.loading()));
      await _db.confeitariasDao.deleteAt(event.id);
      emit(state.copyWith(status: const ConfectioneryStatus.deletedwithsucess()));
    } catch (e) {
      emit(state.copyWith(status: ConfectioneryStatus.deletedwithfailure(e.toString())));
    }
  }

  Future<void> _onDeletedProduct(_DeletedProduct event, Emitter<ConfectioneryState> emit) async {
    try {
      emit(state.copyWith(status: const ConfectioneryStatus.loading()));
      await _db.produtosDao.deleteAt(event.id);
      add(ConfectioneryEvent.loadedProducts(state.confectionery!));
    } catch (e) {
      emit(state.copyWith(status: ConfectioneryStatus.deletedwithfailure(e.toString())));
    }
  }

}
