// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeleteCategoryEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteCategoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'DeleteCategoryEvent()';
}


}

/// @nodoc
class $DeleteCategoryEventCopyWith<$Res>  {
$DeleteCategoryEventCopyWith(DeleteCategoryEvent _, $Res Function(DeleteCategoryEvent) __);
}


/// Adds pattern-matching-related methods to [DeleteCategoryEvent].
extension DeleteCategoryEventPatterns on DeleteCategoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( RemoveCategoryEvent value)?  deleteCategory,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case RemoveCategoryEvent() when deleteCategory != null:
return deleteCategory(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( RemoveCategoryEvent value)  deleteCategory,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case RemoveCategoryEvent():
return deleteCategory(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( RemoveCategoryEvent value)?  deleteCategory,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case RemoveCategoryEvent() when deleteCategory != null:
return deleteCategory(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String categoryId)?  deleteCategory,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case RemoveCategoryEvent() when deleteCategory != null:
return deleteCategory(_that.categoryId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String categoryId)  deleteCategory,}) {final _that = this;
switch (_that) {
case _Started():
return started();case RemoveCategoryEvent():
return deleteCategory(_that.categoryId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String categoryId)?  deleteCategory,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case RemoveCategoryEvent() when deleteCategory != null:
return deleteCategory(_that.categoryId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements DeleteCategoryEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'DeleteCategoryEvent.started()';
}


}




/// @nodoc


class RemoveCategoryEvent implements DeleteCategoryEvent {
  const RemoveCategoryEvent({required this.categoryId});
  

 final  String categoryId;

/// Create a copy of DeleteCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveCategoryEventCopyWith<RemoveCategoryEvent> get copyWith => _$RemoveCategoryEventCopyWithImpl<RemoveCategoryEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveCategoryEvent&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,categoryId);
}

@override
String toString() {
    return 'DeleteCategoryEvent.deleteCategory(categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class $RemoveCategoryEventCopyWith<$Res> implements $DeleteCategoryEventCopyWith<$Res> {
  factory $RemoveCategoryEventCopyWith(RemoveCategoryEvent value, $Res Function(RemoveCategoryEvent) _then) = _$RemoveCategoryEventCopyWithImpl;
@useResult
$Res call({
 String categoryId
});




}
/// @nodoc
class _$RemoveCategoryEventCopyWithImpl<$Res>
    implements $RemoveCategoryEventCopyWith<$Res> {
  _$RemoveCategoryEventCopyWithImpl(this._self, this._then);

  final RemoveCategoryEvent _self;
  final $Res Function(RemoveCategoryEvent) _then;

/// Create a copy of DeleteCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = null,}) {
  return _then(RemoveCategoryEvent(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$DeleteCategoryState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteCategoryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'DeleteCategoryState()';
}


}

/// @nodoc
class $DeleteCategoryStateCopyWith<$Res>  {
$DeleteCategoryStateCopyWith(DeleteCategoryState _, $Res Function(DeleteCategoryState) __);
}


/// Adds pattern-matching-related methods to [DeleteCategoryState].
extension DeleteCategoryStatePatterns on DeleteCategoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( SuccessState value)?  success,TResult Function( LoadingState value)?  loading,TResult Function( ErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SuccessState() when success != null:
return success(_that);case LoadingState() when loading != null:
return loading(_that);case ErrorState() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( SuccessState value)  success,required TResult Function( LoadingState value)  loading,required TResult Function( ErrorState value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SuccessState():
return success(_that);case LoadingState():
return loading(_that);case ErrorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( SuccessState value)?  success,TResult? Function( LoadingState value)?  loading,TResult? Function( ErrorState value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SuccessState() when success != null:
return success(_that);case LoadingState() when loading != null:
return loading(_that);case ErrorState() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  success,TResult Function()?  loading,TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SuccessState() when success != null:
return success();case LoadingState() when loading != null:
return loading();case ErrorState() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  success,required TResult Function()  loading,required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SuccessState():
return success();case LoadingState():
return loading();case ErrorState():
return error(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  success,TResult? Function()?  loading,TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SuccessState() when success != null:
return success();case LoadingState() when loading != null:
return loading();case ErrorState() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements DeleteCategoryState {
  const _Initial();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'DeleteCategoryState.initial()';
}


}




/// @nodoc


class SuccessState implements DeleteCategoryState {
  const SuccessState();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'DeleteCategoryState.success()';
}


}




/// @nodoc


class LoadingState implements DeleteCategoryState {
  const LoadingState();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'DeleteCategoryState.loading()';
}


}




/// @nodoc


class ErrorState implements DeleteCategoryState {
  const ErrorState({required this.error});
  

 final  String error;

/// Create a copy of DeleteCategoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorStateCopyWith<ErrorState> get copyWith => _$ErrorStateCopyWithImpl<ErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorState&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode {
    return Object.hash(runtimeType,error);
}

@override
String toString() {
    return 'DeleteCategoryState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorStateCopyWith<$Res> implements $DeleteCategoryStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(ErrorState value, $Res Function(ErrorState) _then) = _$ErrorStateCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ErrorStateCopyWithImpl<$Res>
    implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(this._self, this._then);

  final ErrorState _self;
  final $Res Function(ErrorState) _then;

/// Create a copy of DeleteCategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorState(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
