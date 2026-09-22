// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_image_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UploadImageState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadImageState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'UploadImageState()';
}


}

/// @nodoc
class $UploadImageStateCopyWith<$Res>  {
$UploadImageStateCopyWith(UploadImageState _, $Res Function(UploadImageState) __);
}


/// Adds pattern-matching-related methods to [UploadImageState].
extension UploadImageStatePatterns on UploadImageState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( LoadingState value)?  loading,TResult Function( ErrorState value)?  error,TResult Function( SuccessState value)?  success,TResult Function( RemoveImageState value)?  removeImage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingState() when loading != null:
return loading(_that);case ErrorState() when error != null:
return error(_that);case SuccessState() when success != null:
return success(_that);case RemoveImageState() when removeImage != null:
return removeImage(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( LoadingState value)  loading,required TResult Function( ErrorState value)  error,required TResult Function( SuccessState value)  success,required TResult Function( RemoveImageState value)  removeImage,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case LoadingState():
return loading(_that);case ErrorState():
return error(_that);case SuccessState():
return success(_that);case RemoveImageState():
return removeImage(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( LoadingState value)?  loading,TResult? Function( ErrorState value)?  error,TResult? Function( SuccessState value)?  success,TResult? Function( RemoveImageState value)?  removeImage,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingState() when loading != null:
return loading(_that);case ErrorState() when error != null:
return error(_that);case SuccessState() when success != null:
return success(_that);case RemoveImageState() when removeImage != null:
return removeImage(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String errMessage)?  error,TResult Function()?  success,TResult Function( String imageUrl)?  removeImage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingState() when loading != null:
return loading();case ErrorState() when error != null:
return error(_that.errMessage);case SuccessState() when success != null:
return success();case RemoveImageState() when removeImage != null:
return removeImage(_that.imageUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String errMessage)  error,required TResult Function()  success,required TResult Function( String imageUrl)  removeImage,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case LoadingState():
return loading();case ErrorState():
return error(_that.errMessage);case SuccessState():
return success();case RemoveImageState():
return removeImage(_that.imageUrl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String errMessage)?  error,TResult? Function()?  success,TResult? Function( String imageUrl)?  removeImage,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingState() when loading != null:
return loading();case ErrorState() when error != null:
return error(_that.errMessage);case SuccessState() when success != null:
return success();case RemoveImageState() when removeImage != null:
return removeImage(_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements UploadImageState {
  const _Initial();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'UploadImageState.initial()';
}


}




/// @nodoc


class LoadingState implements UploadImageState {
  const LoadingState();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'UploadImageState.loading()';
}


}




/// @nodoc


class ErrorState implements UploadImageState {
  const ErrorState({required this.errMessage});
  

 final  String errMessage;

/// Create a copy of UploadImageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorStateCopyWith<ErrorState> get copyWith => _$ErrorStateCopyWithImpl<ErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorState&&(identical(other.errMessage, errMessage) || other.errMessage == errMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,errMessage);
}

@override
String toString() {
    return 'UploadImageState.error(errMessage: $errMessage)';
}


}

/// @nodoc
abstract mixin class $ErrorStateCopyWith<$Res> implements $UploadImageStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(ErrorState value, $Res Function(ErrorState) _then) = _$ErrorStateCopyWithImpl;
@useResult
$Res call({
 String errMessage
});




}
/// @nodoc
class _$ErrorStateCopyWithImpl<$Res>
    implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(this._self, this._then);

  final ErrorState _self;
  final $Res Function(ErrorState) _then;

/// Create a copy of UploadImageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errMessage = null,}) {
  return _then(ErrorState(
errMessage: null == errMessage ? _self.errMessage : errMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SuccessState implements UploadImageState {
  const SuccessState();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'UploadImageState.success()';
}


}




/// @nodoc


class RemoveImageState implements UploadImageState {
  const RemoveImageState({required this.imageUrl});
  

 final  String imageUrl;

/// Create a copy of UploadImageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveImageStateCopyWith<RemoveImageState> get copyWith => _$RemoveImageStateCopyWithImpl<RemoveImageState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveImageState&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode {
    return Object.hash(runtimeType,imageUrl);
}

@override
String toString() {
    return 'UploadImageState.removeImage(imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $RemoveImageStateCopyWith<$Res> implements $UploadImageStateCopyWith<$Res> {
  factory $RemoveImageStateCopyWith(RemoveImageState value, $Res Function(RemoveImageState) _then) = _$RemoveImageStateCopyWithImpl;
@useResult
$Res call({
 String imageUrl
});




}
/// @nodoc
class _$RemoveImageStateCopyWithImpl<$Res>
    implements $RemoveImageStateCopyWith<$Res> {
  _$RemoveImageStateCopyWithImpl(this._self, this._then);

  final RemoveImageState _self;
  final $Res Function(RemoveImageState) _then;

/// Create a copy of UploadImageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? imageUrl = null,}) {
  return _then(RemoveImageState(
imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
