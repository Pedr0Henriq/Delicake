// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confectionery_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConfectioneryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfectioneryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConfectioneryEvent()';
}


}

/// @nodoc
class $ConfectioneryEventCopyWith<$Res>  {
$ConfectioneryEventCopyWith(ConfectioneryEvent _, $Res Function(ConfectioneryEvent) __);
}


/// @nodoc


class _Started implements ConfectioneryEvent {
  const _Started(this.id);
  

 final  int id;

/// Create a copy of ConfectioneryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ConfectioneryEvent.started(id: $id)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $ConfectioneryEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of ConfectioneryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Started(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _LoadedProducts implements ConfectioneryEvent {
  const _LoadedProducts(this.confectionery);
  

 final  Confeitaria confectionery;

/// Create a copy of ConfectioneryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedProductsCopyWith<_LoadedProducts> get copyWith => __$LoadedProductsCopyWithImpl<_LoadedProducts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedProducts&&(identical(other.confectionery, confectionery) || other.confectionery == confectionery));
}


@override
int get hashCode => Object.hash(runtimeType,confectionery);

@override
String toString() {
  return 'ConfectioneryEvent.loadedProducts(confectionery: $confectionery)';
}


}

/// @nodoc
abstract mixin class _$LoadedProductsCopyWith<$Res> implements $ConfectioneryEventCopyWith<$Res> {
  factory _$LoadedProductsCopyWith(_LoadedProducts value, $Res Function(_LoadedProducts) _then) = __$LoadedProductsCopyWithImpl;
@useResult
$Res call({
 Confeitaria confectionery
});




}
/// @nodoc
class __$LoadedProductsCopyWithImpl<$Res>
    implements _$LoadedProductsCopyWith<$Res> {
  __$LoadedProductsCopyWithImpl(this._self, this._then);

  final _LoadedProducts _self;
  final $Res Function(_LoadedProducts) _then;

/// Create a copy of ConfectioneryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? confectionery = null,}) {
  return _then(_LoadedProducts(
null == confectionery ? _self.confectionery : confectionery // ignore: cast_nullable_to_non_nullable
as Confeitaria,
  ));
}


}

/// @nodoc


class _DeletedConfectionery implements ConfectioneryEvent {
  const _DeletedConfectionery(this.id);
  

 final  int id;

/// Create a copy of ConfectioneryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeletedConfectioneryCopyWith<_DeletedConfectionery> get copyWith => __$DeletedConfectioneryCopyWithImpl<_DeletedConfectionery>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeletedConfectionery&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ConfectioneryEvent.deleteConfectionery(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeletedConfectioneryCopyWith<$Res> implements $ConfectioneryEventCopyWith<$Res> {
  factory _$DeletedConfectioneryCopyWith(_DeletedConfectionery value, $Res Function(_DeletedConfectionery) _then) = __$DeletedConfectioneryCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeletedConfectioneryCopyWithImpl<$Res>
    implements _$DeletedConfectioneryCopyWith<$Res> {
  __$DeletedConfectioneryCopyWithImpl(this._self, this._then);

  final _DeletedConfectionery _self;
  final $Res Function(_DeletedConfectionery) _then;

/// Create a copy of ConfectioneryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeletedConfectionery(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ConfectioneryState {

 Confeitaria? get confectionery; List<Produto> get products; ConfectioneryStatus get status;
/// Create a copy of ConfectioneryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfectioneryStateCopyWith<ConfectioneryState> get copyWith => _$ConfectioneryStateCopyWithImpl<ConfectioneryState>(this as ConfectioneryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfectioneryState&&(identical(other.confectionery, confectionery) || other.confectionery == confectionery)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,confectionery,const DeepCollectionEquality().hash(products),status);

@override
String toString() {
  return 'ConfectioneryState(confectionery: $confectionery, products: $products, status: $status)';
}


}

/// @nodoc
abstract mixin class $ConfectioneryStateCopyWith<$Res>  {
  factory $ConfectioneryStateCopyWith(ConfectioneryState value, $Res Function(ConfectioneryState) _then) = _$ConfectioneryStateCopyWithImpl;
@useResult
$Res call({
 Confeitaria? confectionery, List<Produto> products, ConfectioneryStatus status
});


$ConfectioneryStatusCopyWith<$Res> get status;

}
/// @nodoc
class _$ConfectioneryStateCopyWithImpl<$Res>
    implements $ConfectioneryStateCopyWith<$Res> {
  _$ConfectioneryStateCopyWithImpl(this._self, this._then);

  final ConfectioneryState _self;
  final $Res Function(ConfectioneryState) _then;

/// Create a copy of ConfectioneryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? confectionery = freezed,Object? products = null,Object? status = null,}) {
  return _then(_self.copyWith(
confectionery: freezed == confectionery ? _self.confectionery : confectionery // ignore: cast_nullable_to_non_nullable
as Confeitaria?,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<Produto>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ConfectioneryStatus,
  ));
}
/// Create a copy of ConfectioneryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConfectioneryStatusCopyWith<$Res> get status {
  
  return $ConfectioneryStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// @nodoc


class _ConfectioneryState implements ConfectioneryState {
  const _ConfectioneryState({this.confectionery, final  List<Produto> products = const [], this.status = const ConfectioneryStatus.initial()}): _products = products;
  

@override final  Confeitaria? confectionery;
 final  List<Produto> _products;
@override@JsonKey() List<Produto> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override@JsonKey() final  ConfectioneryStatus status;

/// Create a copy of ConfectioneryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfectioneryStateCopyWith<_ConfectioneryState> get copyWith => __$ConfectioneryStateCopyWithImpl<_ConfectioneryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfectioneryState&&(identical(other.confectionery, confectionery) || other.confectionery == confectionery)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,confectionery,const DeepCollectionEquality().hash(_products),status);

@override
String toString() {
  return 'ConfectioneryState(confectionery: $confectionery, products: $products, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ConfectioneryStateCopyWith<$Res> implements $ConfectioneryStateCopyWith<$Res> {
  factory _$ConfectioneryStateCopyWith(_ConfectioneryState value, $Res Function(_ConfectioneryState) _then) = __$ConfectioneryStateCopyWithImpl;
@override @useResult
$Res call({
 Confeitaria? confectionery, List<Produto> products, ConfectioneryStatus status
});


@override $ConfectioneryStatusCopyWith<$Res> get status;

}
/// @nodoc
class __$ConfectioneryStateCopyWithImpl<$Res>
    implements _$ConfectioneryStateCopyWith<$Res> {
  __$ConfectioneryStateCopyWithImpl(this._self, this._then);

  final _ConfectioneryState _self;
  final $Res Function(_ConfectioneryState) _then;

/// Create a copy of ConfectioneryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? confectionery = freezed,Object? products = null,Object? status = null,}) {
  return _then(_ConfectioneryState(
confectionery: freezed == confectionery ? _self.confectionery : confectionery // ignore: cast_nullable_to_non_nullable
as Confeitaria?,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<Produto>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ConfectioneryStatus,
  ));
}

/// Create a copy of ConfectioneryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConfectioneryStatusCopyWith<$Res> get status {
  
  return $ConfectioneryStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

/// @nodoc
mixin _$ConfectioneryStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfectioneryStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConfectioneryStatus()';
}


}

/// @nodoc
class $ConfectioneryStatusCopyWith<$Res>  {
$ConfectioneryStatusCopyWith(ConfectioneryStatus _, $Res Function(ConfectioneryStatus) __);
}


/// @nodoc


class ConfectioneryStatusInitial implements ConfectioneryStatus {
  const ConfectioneryStatusInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfectioneryStatusInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConfectioneryStatus.initial()';
}


}




/// @nodoc


class ConfectioneryStatusLoading implements ConfectioneryStatus {
  const ConfectioneryStatusLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfectioneryStatusLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConfectioneryStatus.loading()';
}


}




/// @nodoc


class ConfectioneryStatusLoadedWithSucess implements ConfectioneryStatus {
  const ConfectioneryStatusLoadedWithSucess(this.confeitaria);
  

 final  Confeitaria confeitaria;

/// Create a copy of ConfectioneryStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfectioneryStatusLoadedWithSucessCopyWith<ConfectioneryStatusLoadedWithSucess> get copyWith => _$ConfectioneryStatusLoadedWithSucessCopyWithImpl<ConfectioneryStatusLoadedWithSucess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfectioneryStatusLoadedWithSucess&&(identical(other.confeitaria, confeitaria) || other.confeitaria == confeitaria));
}


@override
int get hashCode => Object.hash(runtimeType,confeitaria);

@override
String toString() {
  return 'ConfectioneryStatus.loadedwithsucess(confeitaria: $confeitaria)';
}


}

/// @nodoc
abstract mixin class $ConfectioneryStatusLoadedWithSucessCopyWith<$Res> implements $ConfectioneryStatusCopyWith<$Res> {
  factory $ConfectioneryStatusLoadedWithSucessCopyWith(ConfectioneryStatusLoadedWithSucess value, $Res Function(ConfectioneryStatusLoadedWithSucess) _then) = _$ConfectioneryStatusLoadedWithSucessCopyWithImpl;
@useResult
$Res call({
 Confeitaria confeitaria
});




}
/// @nodoc
class _$ConfectioneryStatusLoadedWithSucessCopyWithImpl<$Res>
    implements $ConfectioneryStatusLoadedWithSucessCopyWith<$Res> {
  _$ConfectioneryStatusLoadedWithSucessCopyWithImpl(this._self, this._then);

  final ConfectioneryStatusLoadedWithSucess _self;
  final $Res Function(ConfectioneryStatusLoadedWithSucess) _then;

/// Create a copy of ConfectioneryStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? confeitaria = null,}) {
  return _then(ConfectioneryStatusLoadedWithSucess(
null == confeitaria ? _self.confeitaria : confeitaria // ignore: cast_nullable_to_non_nullable
as Confeitaria,
  ));
}


}

/// @nodoc


class ConfectioneryStatusLoadedWithFailure implements ConfectioneryStatus {
  const ConfectioneryStatusLoadedWithFailure(this.message);
  

 final  String message;

/// Create a copy of ConfectioneryStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfectioneryStatusLoadedWithFailureCopyWith<ConfectioneryStatusLoadedWithFailure> get copyWith => _$ConfectioneryStatusLoadedWithFailureCopyWithImpl<ConfectioneryStatusLoadedWithFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfectioneryStatusLoadedWithFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ConfectioneryStatus.loadedwithfailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $ConfectioneryStatusLoadedWithFailureCopyWith<$Res> implements $ConfectioneryStatusCopyWith<$Res> {
  factory $ConfectioneryStatusLoadedWithFailureCopyWith(ConfectioneryStatusLoadedWithFailure value, $Res Function(ConfectioneryStatusLoadedWithFailure) _then) = _$ConfectioneryStatusLoadedWithFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ConfectioneryStatusLoadedWithFailureCopyWithImpl<$Res>
    implements $ConfectioneryStatusLoadedWithFailureCopyWith<$Res> {
  _$ConfectioneryStatusLoadedWithFailureCopyWithImpl(this._self, this._then);

  final ConfectioneryStatusLoadedWithFailure _self;
  final $Res Function(ConfectioneryStatusLoadedWithFailure) _then;

/// Create a copy of ConfectioneryStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ConfectioneryStatusLoadedWithFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ConfectioneryStatusDeletedWithSucess implements ConfectioneryStatus {
  const ConfectioneryStatusDeletedWithSucess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfectioneryStatusDeletedWithSucess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConfectioneryStatus.deletedwithsucess()';
}


}




/// @nodoc


class ConfectioneryStatusDeletedWithFailure implements ConfectioneryStatus {
  const ConfectioneryStatusDeletedWithFailure(this.message);
  

 final  String message;

/// Create a copy of ConfectioneryStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfectioneryStatusDeletedWithFailureCopyWith<ConfectioneryStatusDeletedWithFailure> get copyWith => _$ConfectioneryStatusDeletedWithFailureCopyWithImpl<ConfectioneryStatusDeletedWithFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfectioneryStatusDeletedWithFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ConfectioneryStatus.deletedwithfailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $ConfectioneryStatusDeletedWithFailureCopyWith<$Res> implements $ConfectioneryStatusCopyWith<$Res> {
  factory $ConfectioneryStatusDeletedWithFailureCopyWith(ConfectioneryStatusDeletedWithFailure value, $Res Function(ConfectioneryStatusDeletedWithFailure) _then) = _$ConfectioneryStatusDeletedWithFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ConfectioneryStatusDeletedWithFailureCopyWithImpl<$Res>
    implements $ConfectioneryStatusDeletedWithFailureCopyWith<$Res> {
  _$ConfectioneryStatusDeletedWithFailureCopyWithImpl(this._self, this._then);

  final ConfectioneryStatusDeletedWithFailure _self;
  final $Res Function(ConfectioneryStatusDeletedWithFailure) _then;

/// Create a copy of ConfectioneryStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ConfectioneryStatusDeletedWithFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
