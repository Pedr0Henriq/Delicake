import 'dart:async';

import 'package:app_desafio/database/database.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:drift/drift.dart' as drift;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_product_event.dart';
part 'create_product_state.dart';
part 'create_product_bloc.freezed.dart';

class CreateProductBloc extends Bloc<CreateProductEvent, CreateProductState> {
  CreateProductBloc(this._db,this._confectioneryId) : super(const CreateProductState()) {
    on<_Started>(_onStarted, transformer: droppable());
    on<_Submitted>(_onSubmitted, transformer: droppable());
    on<_ImageSelected>(_onImageSelected, transformer: droppable());  
    on<_RemoveImage>(_onRemoveImage, transformer: droppable());
  }

  final AppDatabase _db;
  final int _confectioneryId;

  Future<void> _onStarted(
    _Started event,
    Emitter<CreateProductState> emit,
  ) async {
    // emit(CreateProductState.());
  }

  Future<void> _onImageSelected(
    _ImageSelected event,
    Emitter<CreateProductState> emit,
  ) async {
    try {
      emit(state.copyWith(status: const CreateProductStatus.loading()));
      final currentImages = List<String>.from(state.images ?? []);
    currentImages.addAll(event._imagePath);
    emit(state.copyWith(images: currentImages, status: const CreateProductStatus.initial()));
    } catch (e) {
      emit(state.copyWith(
        status: CreateProductStatus.failure(message: e.toString()),
      ));
    }
  }

  Future<void> _onSubmitted(
    _Submitted event,
    Emitter<CreateProductState> emit,
  ) async {
    emit(state.copyWith(status: const CreateProductStatus.loading()));

    try {
      final product = ProdutosCompanion.insert(
        nome: event.name,
        descricao: event.description,
        valor: event.price,
        imagens: drift.Value(event.images),
        confeitariaId: _confectioneryId,
      );

      await _db.produtosDao.insertProduto(product);
      emit(state.copyWith(status: const CreateProductStatus.success()));
    } catch (e) {
      emit(state.copyWith(
        status: CreateProductStatus.failure(message: e.toString()),
      ));
    }
  }

  FutureOr<void> _onRemoveImage(_RemoveImage event, Emitter<CreateProductState> emit) {
    try {
      emit(state.copyWith(status: const CreateProductStatus.loading()));
      final novasImagens = List<String>.from(state.images!)..remove(event.imagePath);
      emit(state.copyWith(images: novasImagens,status: CreateProductStatus.initial()));
    } catch (e) {
      emit(state.copyWith(status: CreateProductStatus.failure()));
    }
  }
}
