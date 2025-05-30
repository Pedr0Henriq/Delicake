// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateEvent()';
}


}

/// @nodoc
class $CreateEventCopyWith<$Res>  {
$CreateEventCopyWith(CreateEvent _, $Res Function(CreateEvent) __);
}


/// @nodoc


class _Started implements CreateEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateEvent.started()';
}


}




/// @nodoc


class _CepChanged implements CreateEvent {
  const _CepChanged(this.cep);
  

 final  String cep;

/// Create a copy of CreateEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CepChangedCopyWith<_CepChanged> get copyWith => __$CepChangedCopyWithImpl<_CepChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CepChanged&&(identical(other.cep, cep) || other.cep == cep));
}


@override
int get hashCode => Object.hash(runtimeType,cep);

@override
String toString() {
  return 'CreateEvent.cepChanged(cep: $cep)';
}


}

/// @nodoc
abstract mixin class _$CepChangedCopyWith<$Res> implements $CreateEventCopyWith<$Res> {
  factory _$CepChangedCopyWith(_CepChanged value, $Res Function(_CepChanged) _then) = __$CepChangedCopyWithImpl;
@useResult
$Res call({
 String cep
});




}
/// @nodoc
class __$CepChangedCopyWithImpl<$Res>
    implements _$CepChangedCopyWith<$Res> {
  __$CepChangedCopyWithImpl(this._self, this._then);

  final _CepChanged _self;
  final $Res Function(_CepChanged) _then;

/// Create a copy of CreateEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cep = null,}) {
  return _then(_CepChanged(
null == cep ? _self.cep : cep // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Submitted implements CreateEvent {
  const _Submitted({required this.name, required this.phone, required this.cep, required this.street, required this.city, required this.state, required this.neighborhood, required this.number});
  

 final  String name;
 final  String phone;
 final  String cep;
 final  String street;
 final  String city;
 final  String state;
 final  String neighborhood;
 final  String number;

/// Create a copy of CreateEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmittedCopyWith<_Submitted> get copyWith => __$SubmittedCopyWithImpl<_Submitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submitted&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.cep, cep) || other.cep == cep)&&(identical(other.street, street) || other.street == street)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.neighborhood, neighborhood) || other.neighborhood == neighborhood)&&(identical(other.number, number) || other.number == number));
}


@override
int get hashCode => Object.hash(runtimeType,name,phone,cep,street,city,state,neighborhood,number);

@override
String toString() {
  return 'CreateEvent.submitted(name: $name, phone: $phone, cep: $cep, street: $street, city: $city, state: $state, neighborhood: $neighborhood, number: $number)';
}


}

/// @nodoc
abstract mixin class _$SubmittedCopyWith<$Res> implements $CreateEventCopyWith<$Res> {
  factory _$SubmittedCopyWith(_Submitted value, $Res Function(_Submitted) _then) = __$SubmittedCopyWithImpl;
@useResult
$Res call({
 String name, String phone, String cep, String street, String city, String state, String neighborhood, String number
});




}
/// @nodoc
class __$SubmittedCopyWithImpl<$Res>
    implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(this._self, this._then);

  final _Submitted _self;
  final $Res Function(_Submitted) _then;

/// Create a copy of CreateEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? phone = null,Object? cep = null,Object? street = null,Object? city = null,Object? state = null,Object? neighborhood = null,Object? number = null,}) {
  return _then(_Submitted(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,cep: null == cep ? _self.cep : cep // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,neighborhood: null == neighborhood ? _self.neighborhood : neighborhood // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadConfectioneries implements CreateEvent {
  const _LoadConfectioneries(this.id);
  

 final  int id;

/// Create a copy of CreateEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadConfectioneriesCopyWith<_LoadConfectioneries> get copyWith => __$LoadConfectioneriesCopyWithImpl<_LoadConfectioneries>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadConfectioneries&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CreateEvent.loadConfectioneries(id: $id)';
}


}

/// @nodoc
abstract mixin class _$LoadConfectioneriesCopyWith<$Res> implements $CreateEventCopyWith<$Res> {
  factory _$LoadConfectioneriesCopyWith(_LoadConfectioneries value, $Res Function(_LoadConfectioneries) _then) = __$LoadConfectioneriesCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$LoadConfectioneriesCopyWithImpl<$Res>
    implements _$LoadConfectioneriesCopyWith<$Res> {
  __$LoadConfectioneriesCopyWithImpl(this._self, this._then);

  final _LoadConfectioneries _self;
  final $Res Function(_LoadConfectioneries) _then;

/// Create a copy of CreateEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_LoadConfectioneries(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Edit implements CreateEvent {
  const _Edit({required this.id, required this.name, required this.phone, required this.cep, required this.street, required this.city, required this.state, required this.neighborhood, required this.number});
  

 final  int id;
 final  String name;
 final  String phone;
 final  String cep;
 final  String street;
 final  String city;
 final  String state;
 final  String neighborhood;
 final  String number;

/// Create a copy of CreateEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditCopyWith<_Edit> get copyWith => __$EditCopyWithImpl<_Edit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Edit&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.cep, cep) || other.cep == cep)&&(identical(other.street, street) || other.street == street)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.neighborhood, neighborhood) || other.neighborhood == neighborhood)&&(identical(other.number, number) || other.number == number));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,phone,cep,street,city,state,neighborhood,number);

@override
String toString() {
  return 'CreateEvent.edit(id: $id, name: $name, phone: $phone, cep: $cep, street: $street, city: $city, state: $state, neighborhood: $neighborhood, number: $number)';
}


}

/// @nodoc
abstract mixin class _$EditCopyWith<$Res> implements $CreateEventCopyWith<$Res> {
  factory _$EditCopyWith(_Edit value, $Res Function(_Edit) _then) = __$EditCopyWithImpl;
@useResult
$Res call({
 int id, String name, String phone, String cep, String street, String city, String state, String neighborhood, String number
});




}
/// @nodoc
class __$EditCopyWithImpl<$Res>
    implements _$EditCopyWith<$Res> {
  __$EditCopyWithImpl(this._self, this._then);

  final _Edit _self;
  final $Res Function(_Edit) _then;

/// Create a copy of CreateEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? phone = null,Object? cep = null,Object? street = null,Object? city = null,Object? state = null,Object? neighborhood = null,Object? number = null,}) {
  return _then(_Edit(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,cep: null == cep ? _self.cep : cep // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,neighborhood: null == neighborhood ? _self.neighborhood : neighborhood // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$CreateState {

 Confeitaria? get confectionery; String? get street; String? get city; String? get state; String? get neighborhood; String? get number; CreateStatus get status;
/// Create a copy of CreateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateStateCopyWith<CreateState> get copyWith => _$CreateStateCopyWithImpl<CreateState>(this as CreateState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateState&&(identical(other.confectionery, confectionery) || other.confectionery == confectionery)&&(identical(other.street, street) || other.street == street)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.neighborhood, neighborhood) || other.neighborhood == neighborhood)&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,confectionery,street,city,state,neighborhood,number,status);

@override
String toString() {
  return 'CreateState(confectionery: $confectionery, street: $street, city: $city, state: $state, neighborhood: $neighborhood, number: $number, status: $status)';
}


}

/// @nodoc
abstract mixin class $CreateStateCopyWith<$Res>  {
  factory $CreateStateCopyWith(CreateState value, $Res Function(CreateState) _then) = _$CreateStateCopyWithImpl;
@useResult
$Res call({
 Confeitaria? confectionery, String? street, String? city, String? state, String? neighborhood, String? number, CreateStatus status
});


$CreateStatusCopyWith<$Res> get status;

}
/// @nodoc
class _$CreateStateCopyWithImpl<$Res>
    implements $CreateStateCopyWith<$Res> {
  _$CreateStateCopyWithImpl(this._self, this._then);

  final CreateState _self;
  final $Res Function(CreateState) _then;

/// Create a copy of CreateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? confectionery = freezed,Object? street = freezed,Object? city = freezed,Object? state = freezed,Object? neighborhood = freezed,Object? number = freezed,Object? status = null,}) {
  return _then(_self.copyWith(
confectionery: freezed == confectionery ? _self.confectionery : confectionery // ignore: cast_nullable_to_non_nullable
as Confeitaria?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,neighborhood: freezed == neighborhood ? _self.neighborhood : neighborhood // ignore: cast_nullable_to_non_nullable
as String?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CreateStatus,
  ));
}
/// Create a copy of CreateState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateStatusCopyWith<$Res> get status {
  
  return $CreateStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// @nodoc


class _CreateState implements CreateState {
  const _CreateState({this.confectionery, this.street, this.city, this.state, this.neighborhood, this.number, this.status = const CreateStatus.initial()});
  

@override final  Confeitaria? confectionery;
@override final  String? street;
@override final  String? city;
@override final  String? state;
@override final  String? neighborhood;
@override final  String? number;
@override@JsonKey() final  CreateStatus status;

/// Create a copy of CreateState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateStateCopyWith<_CreateState> get copyWith => __$CreateStateCopyWithImpl<_CreateState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateState&&(identical(other.confectionery, confectionery) || other.confectionery == confectionery)&&(identical(other.street, street) || other.street == street)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.neighborhood, neighborhood) || other.neighborhood == neighborhood)&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,confectionery,street,city,state,neighborhood,number,status);

@override
String toString() {
  return 'CreateState(confectionery: $confectionery, street: $street, city: $city, state: $state, neighborhood: $neighborhood, number: $number, status: $status)';
}


}

/// @nodoc
abstract mixin class _$CreateStateCopyWith<$Res> implements $CreateStateCopyWith<$Res> {
  factory _$CreateStateCopyWith(_CreateState value, $Res Function(_CreateState) _then) = __$CreateStateCopyWithImpl;
@override @useResult
$Res call({
 Confeitaria? confectionery, String? street, String? city, String? state, String? neighborhood, String? number, CreateStatus status
});


@override $CreateStatusCopyWith<$Res> get status;

}
/// @nodoc
class __$CreateStateCopyWithImpl<$Res>
    implements _$CreateStateCopyWith<$Res> {
  __$CreateStateCopyWithImpl(this._self, this._then);

  final _CreateState _self;
  final $Res Function(_CreateState) _then;

/// Create a copy of CreateState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? confectionery = freezed,Object? street = freezed,Object? city = freezed,Object? state = freezed,Object? neighborhood = freezed,Object? number = freezed,Object? status = null,}) {
  return _then(_CreateState(
confectionery: freezed == confectionery ? _self.confectionery : confectionery // ignore: cast_nullable_to_non_nullable
as Confeitaria?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,neighborhood: freezed == neighborhood ? _self.neighborhood : neighborhood // ignore: cast_nullable_to_non_nullable
as String?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CreateStatus,
  ));
}

/// Create a copy of CreateState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateStatusCopyWith<$Res> get status {
  
  return $CreateStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

/// @nodoc
mixin _$CreateStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateStatus()';
}


}

/// @nodoc
class $CreateStatusCopyWith<$Res>  {
$CreateStatusCopyWith(CreateStatus _, $Res Function(CreateStatus) __);
}


/// @nodoc


class CreateStatusInitial implements CreateStatus {
  const CreateStatusInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateStatusInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateStatus.initial()';
}


}




/// @nodoc


class CreateStatusLoading implements CreateStatus {
  const CreateStatusLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateStatusLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateStatus.loading()';
}


}




/// @nodoc


class CreateStatusSuccess implements CreateStatus {
  const CreateStatusSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateStatusSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateStatus.success()';
}


}




/// @nodoc


class CreateStatusFailure implements CreateStatus {
  const CreateStatusFailure({this.message});
  

 final  String? message;

/// Create a copy of CreateStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateStatusFailureCopyWith<CreateStatusFailure> get copyWith => _$CreateStatusFailureCopyWithImpl<CreateStatusFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateStatusFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CreateStatus.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $CreateStatusFailureCopyWith<$Res> implements $CreateStatusCopyWith<$Res> {
  factory $CreateStatusFailureCopyWith(CreateStatusFailure value, $Res Function(CreateStatusFailure) _then) = _$CreateStatusFailureCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$CreateStatusFailureCopyWithImpl<$Res>
    implements $CreateStatusFailureCopyWith<$Res> {
  _$CreateStatusFailureCopyWithImpl(this._self, this._then);

  final CreateStatusFailure _self;
  final $Res Function(CreateStatusFailure) _then;

/// Create a copy of CreateStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(CreateStatusFailure(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
