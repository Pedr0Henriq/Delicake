part of 'create_bloc.dart';

@freezed
sealed class CreateState with _$CreateState {
  const factory CreateState({
    String? street,
    String? city,
    String? state,
    String? neighborhood,
    String? number,
    @Default(CreateStatus.initial()) CreateStatus status,
  }) = _CreateState;
}

@freezed
sealed class CreateStatus with _$CreateStatus {
  const factory CreateStatus.initial() = CreateStatusInitial;
  const factory CreateStatus.loading() = CreateStatusLoading;
  const factory CreateStatus.success() = CreateStatusSuccess;
  const factory CreateStatus.failure({String? message}) = CreateStatusFailure;
}
