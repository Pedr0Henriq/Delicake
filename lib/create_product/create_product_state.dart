part of 'create_product_bloc.dart';


@freezed
sealed class CreateProductState with _$CreateProductState {
  const factory CreateProductState({
    String? name,
    String? description,
    double? price,
    List<String>? images,
    int? confectioneryId,
    @Default(CreateProductStatus.initial()) CreateProductStatus status,
  }) = _CreateProductState;


}

@freezed
sealed class CreateProductStatus with _$CreateProductStatus {
  const factory CreateProductStatus.initial() = CreateProductStatusInitial;
  const factory CreateProductStatus.loading() = CreateProductStatusLoading;
  const factory CreateProductStatus.success() = CreateProductStatusSuccess;
  const factory CreateProductStatus.failure({String? message}) = CreateProductStatusFailure;
}
