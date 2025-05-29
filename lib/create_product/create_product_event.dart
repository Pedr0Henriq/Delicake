part of 'create_product_bloc.dart';

@freezed
class CreateProductEvent with _$CreateProductEvent {
  const factory CreateProductEvent.started() = _Started;

  const factory CreateProductEvent.imageSelected({
    required List<String> imagePath,
  }) = _ImageSelected;

  const factory CreateProductEvent.removeImage({
    required String imagePath,
  }) = _RemoveImage;

  const factory CreateProductEvent.submitted(
    {
    required String name,
    required String description,
    required double price,
    required List<String> images,
    required int confectioneryId,
    }
  ) = _Submitted;
}