import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:http/http.dart' as http;

import '../../database/database.dart';

part 'create_bloc.freezed.dart';
part 'create_event.dart';
part 'create_state.dart';

class CreateBloc extends Bloc<CreateEvent, CreateState> {
  CreateBloc(this._db) : super(const CreateState()) {
    on<_Started>(_onStarted, transformer: droppable());
    on<_CepChanged>(_onCepChanged, transformer: droppable());
    on<_Submitted>(_onSubmitted, transformer: droppable());
  }

  final AppDatabase _db;

  Future<void> _onStarted(_Started event, Emitter<CreateState> emit) async {
    // emit(state.copyWith(status: const CreateStatus.loading()));
    // final confeitarias = await _db.getAllConfeitarias();
    // emit(state.copyWith(confeitarias: confeitarias, status: const CreateStatus.success()));
  }

  Future<void> _onCepChanged(
    _CepChanged event,
    Emitter<CreateState> emit,
  ) async {
    try {
      emit(state.copyWith(status: const CreateStatus.loading()));
      final url = Uri.parse('https://viacep.com.br/ws/${event.cep}/json/');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final dados = jsonDecode(response.body);
        if (!dados.containsKey('erro')) {
          emit(
            state.copyWith(
              street: dados['logradouro'],
              city: dados['localidade'],
              state: dados['uf'],
              neighborhood: dados['bairro'],
              number: dados['numero'],
            ),
          );
        } else {
          print('CEP não encontrado.');
        }
      } else {
        print('Erro ao buscar o CEP.');
      }
      emit(state.copyWith(status: const CreateStatus.initial()));
    } catch (e) {
      emit(state.copyWith(status: CreateStatus.failure(message: e.toString())));
    }
  }

  Future<void> _onSubmitted(_Submitted event, Emitter<CreateState> emit) async {
    emit(state.copyWith(status: const CreateStatus.loading()));
    try {
      final locations = await locationFromAddress(
        '${event.street}, ${event.city}, ${event.state}, ${event.neighborhood}, ${event.number}',
      );

      final address = locations.firstOrNull;

      final data = ConfeitariasCompanion.insert(
        nome: event.name,
        rua: event.street,
        bairro: event.neighborhood,
        cidade: event.city,
        estado: event.state,
        cep: event.cep,
        numero: event.number,
        latitude: address?.latitude ?? 0,
        longitude: address?.longitude ?? 0,
      );

      await _db.confeitariasDao.insertConfeitaria(data);

      emit(state.copyWith(status: const CreateStatus.success()));
    } catch (e) {
      emit(state.copyWith(status: CreateStatus.failure(message: e.toString())));
    }
  }
}
