// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( LoginEvent value)?  login,TResult Function( SignupEvent value)?  signup,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case LoginEvent() when login != null:
return login(_that);case SignupEvent() when signup != null:
return signup(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( LoginEvent value)  login,required TResult Function( SignupEvent value)  signup,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case LoginEvent():
return login(_that);case SignupEvent():
return signup(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( LoginEvent value)?  login,TResult? Function( SignupEvent value)?  signup,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case LoginEvent() when login != null:
return login(_that);case SignupEvent() when signup != null:
return signup(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  login,TResult Function( String imageUrl)?  signup,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case LoginEvent() when login != null:
return login();case SignupEvent() when signup != null:
return signup(_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  login,required TResult Function( String imageUrl)  signup,}) {final _that = this;
switch (_that) {
case _Started():
return started();case LoginEvent():
return login();case SignupEvent():
return signup(_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  login,TResult? Function( String imageUrl)?  signup,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case LoginEvent() when login != null:
return login();case SignupEvent() when signup != null:
return signup(_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AuthEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthEvent.started()';
}


}




/// @nodoc


class LoginEvent implements AuthEvent {
  const LoginEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthEvent.login()';
}


}




/// @nodoc


class SignupEvent implements AuthEvent {
  const SignupEvent({required this.imageUrl});
  

 final  String imageUrl;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupEventCopyWith<SignupEvent> get copyWith => _$SignupEventCopyWithImpl<SignupEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupEvent&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode {
    return Object.hash(runtimeType,imageUrl);
}

@override
String toString() {
    return 'AuthEvent.signup(imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $SignupEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $SignupEventCopyWith(SignupEvent value, $Res Function(SignupEvent) _then) = _$SignupEventCopyWithImpl;
@useResult
$Res call({
 String imageUrl
});




}
/// @nodoc
class _$SignupEventCopyWithImpl<$Res>
    implements $SignupEventCopyWith<$Res> {
  _$SignupEventCopyWithImpl(this._self, this._then);

  final SignupEvent _self;
  final $Res Function(SignupEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? imageUrl = null,}) {
  return _then(SignupEvent(
imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( LoadingEvent value)?  loading,TResult Function( ErrorEvent value)?  error,TResult Function( SuccessEvent value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingEvent() when loading != null:
return loading(_that);case ErrorEvent() when error != null:
return error(_that);case SuccessEvent() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( LoadingEvent value)  loading,required TResult Function( ErrorEvent value)  error,required TResult Function( SuccessEvent value)  success,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case LoadingEvent():
return loading(_that);case ErrorEvent():
return error(_that);case SuccessEvent():
return success(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( LoadingEvent value)?  loading,TResult? Function( ErrorEvent value)?  error,TResult? Function( SuccessEvent value)?  success,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingEvent() when loading != null:
return loading(_that);case ErrorEvent() when error != null:
return error(_that);case SuccessEvent() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String errMessage)?  error,TResult Function( String userRole)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingEvent() when loading != null:
return loading();case ErrorEvent() when error != null:
return error(_that.errMessage);case SuccessEvent() when success != null:
return success(_that.userRole);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String errMessage)  error,required TResult Function( String userRole)  success,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case LoadingEvent():
return loading();case ErrorEvent():
return error(_that.errMessage);case SuccessEvent():
return success(_that.userRole);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String errMessage)?  error,TResult? Function( String userRole)?  success,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingEvent() when loading != null:
return loading();case ErrorEvent() when error != null:
return error(_that.errMessage);case SuccessEvent() when success != null:
return success(_that.userRole);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AuthState {
  const _Initial();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthState.initial()';
}


}




/// @nodoc


class LoadingEvent implements AuthState {
  const LoadingEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthState.loading()';
}


}




/// @nodoc


class ErrorEvent implements AuthState {
  const ErrorEvent({required this.errMessage});
  

 final  String errMessage;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorEventCopyWith<ErrorEvent> get copyWith => _$ErrorEventCopyWithImpl<ErrorEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorEvent&&(identical(other.errMessage, errMessage) || other.errMessage == errMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,errMessage);
}

@override
String toString() {
    return 'AuthState.error(errMessage: $errMessage)';
}


}

/// @nodoc
abstract mixin class $ErrorEventCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $ErrorEventCopyWith(ErrorEvent value, $Res Function(ErrorEvent) _then) = _$ErrorEventCopyWithImpl;
@useResult
$Res call({
 String errMessage
});




}
/// @nodoc
class _$ErrorEventCopyWithImpl<$Res>
    implements $ErrorEventCopyWith<$Res> {
  _$ErrorEventCopyWithImpl(this._self, this._then);

  final ErrorEvent _self;
  final $Res Function(ErrorEvent) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errMessage = null,}) {
  return _then(ErrorEvent(
errMessage: null == errMessage ? _self.errMessage : errMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SuccessEvent implements AuthState {
  const SuccessEvent({required this.userRole});
  

 final  String userRole;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessEventCopyWith<SuccessEvent> get copyWith => _$SuccessEventCopyWithImpl<SuccessEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessEvent&&(identical(other.userRole, userRole) || other.userRole == userRole));
}


@override
int get hashCode {
    return Object.hash(runtimeType,userRole);
}

@override
String toString() {
    return 'AuthState.success(userRole: $userRole)';
}


}

/// @nodoc
abstract mixin class $SuccessEventCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $SuccessEventCopyWith(SuccessEvent value, $Res Function(SuccessEvent) _then) = _$SuccessEventCopyWithImpl;
@useResult
$Res call({
 String userRole
});




}
/// @nodoc
class _$SuccessEventCopyWithImpl<$Res>
    implements $SuccessEventCopyWith<$Res> {
  _$SuccessEventCopyWithImpl(this._self, this._then);

  final SuccessEvent _self;
  final $Res Function(SuccessEvent) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userRole = null,}) {
  return _then(SuccessEvent(
userRole: null == userRole ? _self.userRole : userRole // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
