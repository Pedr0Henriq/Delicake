part of 'create_bloc.dart';

@freezed
class CreateEvent with _$CreateEvent {
  const factory CreateEvent.started(Confeitaria? confectionery) = _Started;

  const factory CreateEvent.cepChanged(String cep) = _CepChanged;

  const factory CreateEvent.submitted({
    required String name,
    required String phone,
    required String cep,
    required String street,
    required String city,
    required String state,
    required String neighborhood,
    required String number,
  }) = _Submitted;

 // const factory CreateEvent.loadConfectioneries(int id) = _LoadConfectioneries;

  const factory CreateEvent.edit({
    required int id,
    required String name,
    required String phone,
    required String cep,
    required String street,
    required String city,
    required String state,
    required String neighborhood,
    required String number,
  }) = _Edit;
}
