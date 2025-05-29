part of 'confectionery_bloc.dart';

@freezed
sealed class ConfectioneryState with _$ConfectioneryState {

const factory ConfectioneryState(
  {Confeitaria? confectionery,
  @Default([]) List<Produto> products,
  @Default(ConfectioneryStatus.initial()) ConfectioneryStatus status}
) = _ConfectioneryState;

}

@freezed 
class ConfectioneryStatus with _$ConfectioneryStatus{
  const factory ConfectioneryStatus.initial() = ConfectioneryStatusInitial;
  const factory ConfectioneryStatus.loading() = ConfectioneryStatusLoading;
  const factory ConfectioneryStatus.loadedwithsucess(Confeitaria confeitaria) = ConfectioneryStatusLoadedWithSucess;
  const factory ConfectioneryStatus.loadedwithfailure(String message) = ConfectioneryStatusLoadedWithFailure;
  const factory ConfectioneryStatus.deletedwithsucess() = ConfectioneryStatusDeletedWithSucess;
  const factory ConfectioneryStatus.deletedwithfailure(String message) = ConfectioneryStatusDeletedWithFailure;
}


