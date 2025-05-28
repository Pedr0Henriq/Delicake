part of 'map_bloc.dart';

@freezed
sealed class MapState with _$MapState {
  const factory MapState({
    @Default([]) List<Confeitaria> confeitarias,
    @Default(false) bool isLoading,
  }) = _MapState;
}
