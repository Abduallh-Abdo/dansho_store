// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_admin_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetAllAdminProductsEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllAdminProductsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'GetAllAdminProductsEvent()';
}


}

/// @nodoc
class $GetAllAdminProductsEventCopyWith<$Res>  {
$GetAllAdminProductsEventCopyWith(GetAllAdminProductsEvent _, $Res Function(GetAllAdminProductsEvent) __);
}


/// Adds pattern-matching-related methods to [GetAllAdminProductsEvent].
extension GetAllAdminProductsEventPatterns on GetAllAdminProductsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( FetchAllAdminProductEvent value)?  getAllProduct,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case FetchAllAdminProductEvent() when getAllProduct != null:
return getAllProduct(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( FetchAllAdminProductEvent value)  getAllProduct,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case FetchAllAdminProductEvent():
return getAllProduct(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( FetchAllAdminProductEvent value)?  getAllProduct,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case FetchAllAdminProductEvent() when getAllProduct != null:
return getAllProduct(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( bool isNotLoading)?  getAllProduct,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case FetchAllAdminProductEvent() when getAllProduct != null:
return getAllProduct(_that.isNotLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( bool isNotLoading)  getAllProduct,}) {final _that = this;
switch (_that) {
case _Started():
return started();case FetchAllAdminProductEvent():
return getAllProduct(_that.isNotLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( bool isNotLoading)?  getAllProduct,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case FetchAllAdminProductEvent() when getAllProduct != null:
return getAllProduct(_that.isNotLoading);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements GetAllAdminProductsEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'GetAllAdminProductsEvent.started()';
}


}




/// @nodoc


class FetchAllAdminProductEvent implements GetAllAdminProductsEvent {
  const FetchAllAdminProductEvent({required this.isNotLoading});
  

 final  bool isNotLoading;

/// Create a copy of GetAllAdminProductsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchAllAdminProductEventCopyWith<FetchAllAdminProductEvent> get copyWith => _$FetchAllAdminProductEventCopyWithImpl<FetchAllAdminProductEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchAllAdminProductEvent&&(identical(other.isNotLoading, isNotLoading) || other.isNotLoading == isNotLoading));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isNotLoading);
}

@override
String toString() {
    return 'GetAllAdminProductsEvent.getAllProduct(isNotLoading: $isNotLoading)';
}


}

/// @nodoc
abstract mixin class $FetchAllAdminProductEventCopyWith<$Res> implements $GetAllAdminProductsEventCopyWith<$Res> {
  factory $FetchAllAdminProductEventCopyWith(FetchAllAdminProductEvent value, $Res Function(FetchAllAdminProductEvent) _then) = _$FetchAllAdminProductEventCopyWithImpl;
@useResult
$Res call({
 bool isNotLoading
});




}
/// @nodoc
class _$FetchAllAdminProductEventCopyWithImpl<$Res>
    implements $FetchAllAdminProductEventCopyWith<$Res> {
  _$FetchAllAdminProductEventCopyWithImpl(this._self, this._then);

  final FetchAllAdminProductEvent _self;
  final $Res Function(FetchAllAdminProductEvent) _then;

/// Create a copy of GetAllAdminProductsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isNotLoading = null,}) {
  return _then(FetchAllAdminProductEvent(
isNotLoading: null == isNotLoading ? _self.isNotLoading : isNotLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$GetAllAdminProductsState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllAdminProductsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'GetAllAdminProductsState()';
}


}

/// @nodoc
class $GetAllAdminProductsStateCopyWith<$Res>  {
$GetAllAdminProductsStateCopyWith(GetAllAdminProductsState _, $Res Function(GetAllAdminProductsState) __);
}


/// Adds pattern-matching-related methods to [GetAllAdminProductsState].
extension GetAllAdminProductsStatePatterns on GetAllAdminProductsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadingState value)?  loading,TResult Function( emptyState value)?  empty,TResult Function( SuccessState value)?  success,TResult Function( ErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadingState() when loading != null:
return loading(_that);case emptyState() when empty != null:
return empty(_that);case SuccessState() when success != null:
return success(_that);case ErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadingState value)  loading,required TResult Function( emptyState value)  empty,required TResult Function( SuccessState value)  success,required TResult Function( ErrorState value)  error,}){
final _that = this;
switch (_that) {
case LoadingState():
return loading(_that);case emptyState():
return empty(_that);case SuccessState():
return success(_that);case ErrorState():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadingState value)?  loading,TResult? Function( emptyState value)?  empty,TResult? Function( SuccessState value)?  success,TResult? Function( ErrorState value)?  error,}){
final _that = this;
switch (_that) {
case LoadingState() when loading != null:
return loading(_that);case emptyState() when empty != null:
return empty(_that);case SuccessState() when success != null:
return success(_that);case ErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  empty,TResult Function( List<GetAllProductReponseModel> productList)?  success,TResult Function( String errorMessage)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadingState() when loading != null:
return loading();case emptyState() when empty != null:
return empty();case SuccessState() when success != null:
return success(_that.productList);case ErrorState() when error != null:
return error(_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  empty,required TResult Function( List<GetAllProductReponseModel> productList)  success,required TResult Function( String errorMessage)  error,}) {final _that = this;
switch (_that) {
case LoadingState():
return loading();case emptyState():
return empty();case SuccessState():
return success(_that.productList);case ErrorState():
return error(_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  empty,TResult? Function( List<GetAllProductReponseModel> productList)?  success,TResult? Function( String errorMessage)?  error,}) {final _that = this;
switch (_that) {
case LoadingState() when loading != null:
return loading();case emptyState() when empty != null:
return empty();case SuccessState() when success != null:
return success(_that.productList);case ErrorState() when error != null:
return error(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class LoadingState implements GetAllAdminProductsState {
  const LoadingState();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'GetAllAdminProductsState.loading()';
}


}




/// @nodoc


class emptyState implements GetAllAdminProductsState {
  const emptyState();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is emptyState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'GetAllAdminProductsState.empty()';
}


}




/// @nodoc


class SuccessState implements GetAllAdminProductsState {
  const SuccessState({required  List<GetAllProductReponseModel> productList}): _productList = productList;
  

 final  List<GetAllProductReponseModel> _productList;
 List<GetAllProductReponseModel> get productList {
  if (_productList is EqualUnmodifiableListView) return _productList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productList);
}


/// Create a copy of GetAllAdminProductsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessStateCopyWith<SuccessState> get copyWith => _$SuccessStateCopyWithImpl<SuccessState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessState&&const DeepCollectionEquality().equals(other.productList, _productList));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_productList));
}

@override
String toString() {
    return 'GetAllAdminProductsState.success(productList: $productList)';
}


}

/// @nodoc
abstract mixin class $SuccessStateCopyWith<$Res> implements $GetAllAdminProductsStateCopyWith<$Res> {
  factory $SuccessStateCopyWith(SuccessState value, $Res Function(SuccessState) _then) = _$SuccessStateCopyWithImpl;
@useResult
$Res call({
 List<GetAllProductReponseModel> productList
});




}
/// @nodoc
class _$SuccessStateCopyWithImpl<$Res>
    implements $SuccessStateCopyWith<$Res> {
  _$SuccessStateCopyWithImpl(this._self, this._then);

  final SuccessState _self;
  final $Res Function(SuccessState) _then;

/// Create a copy of GetAllAdminProductsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productList = null,}) {
  return _then(SuccessState(
productList: null == productList ? _self._productList : productList // ignore: cast_nullable_to_non_nullable
as List<GetAllProductReponseModel>,
  ));
}


}

/// @nodoc


class ErrorState implements GetAllAdminProductsState {
  const ErrorState({required this.errorMessage});
  

 final  String errorMessage;

/// Create a copy of GetAllAdminProductsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorStateCopyWith<ErrorState> get copyWith => _$ErrorStateCopyWithImpl<ErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorState&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,errorMessage);
}

@override
String toString() {
    return 'GetAllAdminProductsState.error(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ErrorStateCopyWith<$Res> implements $GetAllAdminProductsStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(ErrorState value, $Res Function(ErrorState) _then) = _$ErrorStateCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$ErrorStateCopyWithImpl<$Res>
    implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(this._self, this._then);

  final ErrorState _self;
  final $Res Function(ErrorState) _then;

/// Create a copy of GetAllAdminProductsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(ErrorState(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
