part of 'confectionery_bloc.dart';

@freezed
class ConfectioneryEvent with _$ConfectioneryEvent {
  const factory ConfectioneryEvent.started(int id) = _Started;
  const factory ConfectioneryEvent.loadedProducts(Confeitaria confectionery) = _LoadedProducts;
  const factory ConfectioneryEvent.deleteConfectionery(int id) = _DeletedConfectionery;
  const factory ConfectioneryEvent.deleteProduct(int id) = _DeletedProduct;
}