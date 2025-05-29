part of 'create_product_bloc.dart';

@freezed
class CreateProductEvent with _$CreateProductEvent {
  const factory CreateProductEvent.started() = _Started;

  const factory CreateProductEvent.imageSelected({
    required List<XFile> imagePath,
  }) = _ImageSelected;

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