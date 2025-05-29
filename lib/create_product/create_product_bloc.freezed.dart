// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateProductEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateProductEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateProductEvent()';
}


}

/// @nodoc
class $CreateProductEventCopyWith<$Res>  {
$CreateProductEventCopyWith(CreateProductEvent _, $Res Function(CreateProductEvent) __);
}


/// @nodoc


class _Started implements CreateProductEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateProductEvent.started()';
}


}




/// @nodoc


class _ImageSelected implements CreateProductEvent {
  const _ImageSelected({required final  List<String> imagePath}): _imagePath = imagePath;
  

 final  List<String> _imagePath;
 List<String> get imagePath {
  if (_imagePath is EqualUnmodifiableListView) return _imagePath;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imagePath);
}


/// Create a copy of CreateProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageSelectedCopyWith<_ImageSelected> get copyWith => __$ImageSelectedCopyWithImpl<_ImageSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageSelected&&const DeepCollectionEquality().equals(other._imagePath, _imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_imagePath));

@override
String toString() {
  return 'CreateProductEvent.imageSelected(imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class _$ImageSelectedCopyWith<$Res> implements $CreateProductEventCopyWith<$Res> {
  factory _$ImageSelectedCopyWith(_ImageSelected value, $Res Function(_ImageSelected) _then) = __$ImageSelectedCopyWithImpl;
@useResult
$Res call({
 List<String> imagePath
});




}
/// @nodoc
class __$ImageSelectedCopyWithImpl<$Res>
    implements _$ImageSelectedCopyWith<$Res> {
  __$ImageSelectedCopyWithImpl(this._self, this._then);

  final _ImageSelected _self;
  final $Res Function(_ImageSelected) _then;

/// Create a copy of CreateProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? imagePath = null,}) {
  return _then(_ImageSelected(
imagePath: null == imagePath ? _self._imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _RemoveImage implements CreateProductEvent {
  const _RemoveImage({required this.imagePath});
  

 final  String imagePath;

/// Create a copy of CreateProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveImageCopyWith<_RemoveImage> get copyWith => __$RemoveImageCopyWithImpl<_RemoveImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveImage&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,imagePath);

@override
String toString() {
  return 'CreateProductEvent.removeImage(imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class _$RemoveImageCopyWith<$Res> implements $CreateProductEventCopyWith<$Res> {
  factory _$RemoveImageCopyWith(_RemoveImage value, $Res Function(_RemoveImage) _then) = __$RemoveImageCopyWithImpl;
@useResult
$Res call({
 String imagePath
});




}
/// @nodoc
class __$RemoveImageCopyWithImpl<$Res>
    implements _$RemoveImageCopyWith<$Res> {
  __$RemoveImageCopyWithImpl(this._self, this._then);

  final _RemoveImage _self;
  final $Res Function(_RemoveImage) _then;

/// Create a copy of CreateProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? imagePath = null,}) {
  return _then(_RemoveImage(
imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Submitted implements CreateProductEvent {
  const _Submitted({required this.name, required this.description, required this.price, required final  List<String> images, required this.confectioneryId}): _images = images;
  

 final  String name;
 final  String description;
 final  double price;
 final  List<String> _images;
 List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

 final  int confectioneryId;

/// Create a copy of CreateProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmittedCopyWith<_Submitted> get copyWith => __$SubmittedCopyWithImpl<_Submitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submitted&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.confectioneryId, confectioneryId) || other.confectioneryId == confectioneryId));
}


@override
int get hashCode => Object.hash(runtimeType,name,description,price,const DeepCollectionEquality().hash(_images),confectioneryId);

@override
String toString() {
  return 'CreateProductEvent.submitted(name: $name, description: $description, price: $price, images: $images, confectioneryId: $confectioneryId)';
}


}

/// @nodoc
abstract mixin class _$SubmittedCopyWith<$Res> implements $CreateProductEventCopyWith<$Res> {
  factory _$SubmittedCopyWith(_Submitted value, $Res Function(_Submitted) _then) = __$SubmittedCopyWithImpl;
@useResult
$Res call({
 String name, String description, double price, List<String> images, int confectioneryId
});




}
/// @nodoc
class __$SubmittedCopyWithImpl<$Res>
    implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(this._self, this._then);

  final _Submitted _self;
  final $Res Function(_Submitted) _then;

/// Create a copy of CreateProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,Object? price = null,Object? images = null,Object? confectioneryId = null,}) {
  return _then(_Submitted(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,confectioneryId: null == confectioneryId ? _self.confectioneryId : confectioneryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$CreateProductState {

 String? get name; String? get description; double? get price; List<String>? get images; int? get confectioneryId; CreateProductStatus get status;
/// Create a copy of CreateProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateProductStateCopyWith<CreateProductState> get copyWith => _$CreateProductStateCopyWithImpl<CreateProductState>(this as CreateProductState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateProductState&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.confectioneryId, confectioneryId) || other.confectioneryId == confectioneryId)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,name,description,price,const DeepCollectionEquality().hash(images),confectioneryId,status);

@override
String toString() {
  return 'CreateProductState(name: $name, description: $description, price: $price, images: $images, confectioneryId: $confectioneryId, status: $status)';
}


}

/// @nodoc
abstract mixin class $CreateProductStateCopyWith<$Res>  {
  factory $CreateProductStateCopyWith(CreateProductState value, $Res Function(CreateProductState) _then) = _$CreateProductStateCopyWithImpl;
@useResult
$Res call({
 String? name, String? description, double? price, List<String>? images, int? confectioneryId, CreateProductStatus status
});


$CreateProductStatusCopyWith<$Res> get status;

}
/// @nodoc
class _$CreateProductStateCopyWithImpl<$Res>
    implements $CreateProductStateCopyWith<$Res> {
  _$CreateProductStateCopyWithImpl(this._self, this._then);

  final CreateProductState _self;
  final $Res Function(CreateProductState) _then;

/// Create a copy of CreateProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? description = freezed,Object? price = freezed,Object? images = freezed,Object? confectioneryId = freezed,Object? status = null,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>?,confectioneryId: freezed == confectioneryId ? _self.confectioneryId : confectioneryId // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CreateProductStatus,
  ));
}
/// Create a copy of CreateProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateProductStatusCopyWith<$Res> get status {
  
  return $CreateProductStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// @nodoc


class _CreateProductState implements CreateProductState {
  const _CreateProductState({this.name, this.description, this.price, final  List<String>? images, this.confectioneryId, this.status = const CreateProductStatus.initial()}): _images = images;
  

@override final  String? name;
@override final  String? description;
@override final  double? price;
 final  List<String>? _images;
@override List<String>? get images {
  final value = _images;
  if (value == null) return null;
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? confectioneryId;
@override@JsonKey() final  CreateProductStatus status;

/// Create a copy of CreateProductState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateProductStateCopyWith<_CreateProductState> get copyWith => __$CreateProductStateCopyWithImpl<_CreateProductState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateProductState&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.confectioneryId, confectioneryId) || other.confectioneryId == confectioneryId)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,name,description,price,const DeepCollectionEquality().hash(_images),confectioneryId,status);

@override
String toString() {
  return 'CreateProductState(name: $name, description: $description, price: $price, images: $images, confectioneryId: $confectioneryId, status: $status)';
}


}

/// @nodoc
abstract mixin class _$CreateProductStateCopyWith<$Res> implements $CreateProductStateCopyWith<$Res> {
  factory _$CreateProductStateCopyWith(_CreateProductState value, $Res Function(_CreateProductState) _then) = __$CreateProductStateCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? description, double? price, List<String>? images, int? confectioneryId, CreateProductStatus status
});


@override $CreateProductStatusCopyWith<$Res> get status;

}
/// @nodoc
class __$CreateProductStateCopyWithImpl<$Res>
    implements _$CreateProductStateCopyWith<$Res> {
  __$CreateProductStateCopyWithImpl(this._self, this._then);

  final _CreateProductState _self;
  final $Res Function(_CreateProductState) _then;

/// Create a copy of CreateProductState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? description = freezed,Object? price = freezed,Object? images = freezed,Object? confectioneryId = freezed,Object? status = null,}) {
  return _then(_CreateProductState(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,images: freezed == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>?,confectioneryId: freezed == confectioneryId ? _self.confectioneryId : confectioneryId // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CreateProductStatus,
  ));
}

/// Create a copy of CreateProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateProductStatusCopyWith<$Res> get status {
  
  return $CreateProductStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

/// @nodoc
mixin _$CreateProductStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateProductStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateProductStatus()';
}


}

/// @nodoc
class $CreateProductStatusCopyWith<$Res>  {
$CreateProductStatusCopyWith(CreateProductStatus _, $Res Function(CreateProductStatus) __);
}


/// @nodoc


class CreateProductStatusInitial implements CreateProductStatus {
  const CreateProductStatusInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateProductStatusInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateProductStatus.initial()';
}


}




/// @nodoc


class CreateProductStatusLoading implements CreateProductStatus {
  const CreateProductStatusLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateProductStatusLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateProductStatus.loading()';
}


}




/// @nodoc


class CreateProductStatusSuccess implements CreateProductStatus {
  const CreateProductStatusSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateProductStatusSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateProductStatus.success()';
}


}




/// @nodoc


class CreateProductStatusFailure implements CreateProductStatus {
  const CreateProductStatusFailure({this.message});
  

 final  String? message;

/// Create a copy of CreateProductStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateProductStatusFailureCopyWith<CreateProductStatusFailure> get copyWith => _$CreateProductStatusFailureCopyWithImpl<CreateProductStatusFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateProductStatusFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CreateProductStatus.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $CreateProductStatusFailureCopyWith<$Res> implements $CreateProductStatusCopyWith<$Res> {
  factory $CreateProductStatusFailureCopyWith(CreateProductStatusFailure value, $Res Function(CreateProductStatusFailure) _then) = _$CreateProductStatusFailureCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$CreateProductStatusFailureCopyWithImpl<$Res>
    implements $CreateProductStatusFailureCopyWith<$Res> {
  _$CreateProductStatusFailureCopyWithImpl(this._self, this._then);

  final CreateProductStatusFailure _self;
  final $Res Function(CreateProductStatusFailure) _then;

/// Create a copy of CreateProductStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(CreateProductStatusFailure(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
