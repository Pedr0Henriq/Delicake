part of 'create_bloc.dart';

@freezed
class CreateEvent with _$CreateEvent {
  const factory CreateEvent.started() = _Started;

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
}
