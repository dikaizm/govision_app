// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_start_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppStartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() internetUnAvailable,
    required TResult Function(User user) authenticated,
    required TResult Function() authenticatedAnonymous,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? internetUnAvailable,
    TResult? Function(User user)? authenticated,
    TResult? Function()? authenticatedAnonymous,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? internetUnAvailable,
    TResult Function(User user)? authenticated,
    TResult Function()? authenticatedAnonymous,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(_InternetUnAvailable value) internetUnAvailable,
    required TResult Function(AppAuthenticated value) authenticated,
    required TResult Function(AppAuthenticatedAnonymous value)
        authenticatedAnonymous,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(_InternetUnAvailable value)? internetUnAvailable,
    TResult? Function(AppAuthenticated value)? authenticated,
    TResult? Function(AppAuthenticatedAnonymous value)? authenticatedAnonymous,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(_InternetUnAvailable value)? internetUnAvailable,
    TResult Function(AppAuthenticated value)? authenticated,
    TResult Function(AppAuthenticatedAnonymous value)? authenticatedAnonymous,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStartStateCopyWith<$Res> {
  factory $AppStartStateCopyWith(
          AppStartState value, $Res Function(AppStartState) then) =
      _$AppStartStateCopyWithImpl<$Res, AppStartState>;
}

/// @nodoc
class _$AppStartStateCopyWithImpl<$Res, $Val extends AppStartState>
    implements $AppStartStateCopyWith<$Res> {
  _$AppStartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppStartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AppStartStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppStartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AppStartState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() internetUnAvailable,
    required TResult Function(User user) authenticated,
    required TResult Function() authenticatedAnonymous,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? internetUnAvailable,
    TResult? Function(User user)? authenticated,
    TResult? Function()? authenticatedAnonymous,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? internetUnAvailable,
    TResult Function(User user)? authenticated,
    TResult Function()? authenticatedAnonymous,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(_InternetUnAvailable value) internetUnAvailable,
    required TResult Function(AppAuthenticated value) authenticated,
    required TResult Function(AppAuthenticatedAnonymous value)
        authenticatedAnonymous,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(_InternetUnAvailable value)? internetUnAvailable,
    TResult? Function(AppAuthenticated value)? authenticated,
    TResult? Function(AppAuthenticatedAnonymous value)? authenticatedAnonymous,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(_InternetUnAvailable value)? internetUnAvailable,
    TResult Function(AppAuthenticated value)? authenticated,
    TResult Function(AppAuthenticatedAnonymous value)? authenticatedAnonymous,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppStartState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(_$UnauthenticatedImpl value,
          $Res Function(_$UnauthenticatedImpl) then) =
      __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$AppStartStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppStartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnauthenticatedImpl implements Unauthenticated {
  const _$UnauthenticatedImpl();

  @override
  String toString() {
    return 'AppStartState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() internetUnAvailable,
    required TResult Function(User user) authenticated,
    required TResult Function() authenticatedAnonymous,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? internetUnAvailable,
    TResult? Function(User user)? authenticated,
    TResult? Function()? authenticatedAnonymous,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? internetUnAvailable,
    TResult Function(User user)? authenticated,
    TResult Function()? authenticatedAnonymous,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(_InternetUnAvailable value) internetUnAvailable,
    required TResult Function(AppAuthenticated value) authenticated,
    required TResult Function(AppAuthenticatedAnonymous value)
        authenticatedAnonymous,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(_InternetUnAvailable value)? internetUnAvailable,
    TResult? Function(AppAuthenticated value)? authenticated,
    TResult? Function(AppAuthenticatedAnonymous value)? authenticatedAnonymous,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(_InternetUnAvailable value)? internetUnAvailable,
    TResult Function(AppAuthenticated value)? authenticated,
    TResult Function(AppAuthenticatedAnonymous value)? authenticatedAnonymous,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AppStartState {
  const factory Unauthenticated() = _$UnauthenticatedImpl;
}

/// @nodoc
abstract class _$$InternetUnAvailableImplCopyWith<$Res> {
  factory _$$InternetUnAvailableImplCopyWith(_$InternetUnAvailableImpl value,
          $Res Function(_$InternetUnAvailableImpl) then) =
      __$$InternetUnAvailableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InternetUnAvailableImplCopyWithImpl<$Res>
    extends _$AppStartStateCopyWithImpl<$Res, _$InternetUnAvailableImpl>
    implements _$$InternetUnAvailableImplCopyWith<$Res> {
  __$$InternetUnAvailableImplCopyWithImpl(_$InternetUnAvailableImpl _value,
      $Res Function(_$InternetUnAvailableImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppStartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InternetUnAvailableImpl implements _InternetUnAvailable {
  const _$InternetUnAvailableImpl();

  @override
  String toString() {
    return 'AppStartState.internetUnAvailable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternetUnAvailableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() internetUnAvailable,
    required TResult Function(User user) authenticated,
    required TResult Function() authenticatedAnonymous,
  }) {
    return internetUnAvailable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? internetUnAvailable,
    TResult? Function(User user)? authenticated,
    TResult? Function()? authenticatedAnonymous,
  }) {
    return internetUnAvailable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? internetUnAvailable,
    TResult Function(User user)? authenticated,
    TResult Function()? authenticatedAnonymous,
    required TResult orElse(),
  }) {
    if (internetUnAvailable != null) {
      return internetUnAvailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(_InternetUnAvailable value) internetUnAvailable,
    required TResult Function(AppAuthenticated value) authenticated,
    required TResult Function(AppAuthenticatedAnonymous value)
        authenticatedAnonymous,
  }) {
    return internetUnAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(_InternetUnAvailable value)? internetUnAvailable,
    TResult? Function(AppAuthenticated value)? authenticated,
    TResult? Function(AppAuthenticatedAnonymous value)? authenticatedAnonymous,
  }) {
    return internetUnAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(_InternetUnAvailable value)? internetUnAvailable,
    TResult Function(AppAuthenticated value)? authenticated,
    TResult Function(AppAuthenticatedAnonymous value)? authenticatedAnonymous,
    required TResult orElse(),
  }) {
    if (internetUnAvailable != null) {
      return internetUnAvailable(this);
    }
    return orElse();
  }
}

abstract class _InternetUnAvailable implements AppStartState {
  const factory _InternetUnAvailable() = _$InternetUnAvailableImpl;
}

/// @nodoc
abstract class _$$AppAuthenticatedImplCopyWith<$Res> {
  factory _$$AppAuthenticatedImplCopyWith(_$AppAuthenticatedImpl value,
          $Res Function(_$AppAuthenticatedImpl) then) =
      __$$AppAuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AppAuthenticatedImplCopyWithImpl<$Res>
    extends _$AppStartStateCopyWithImpl<$Res, _$AppAuthenticatedImpl>
    implements _$$AppAuthenticatedImplCopyWith<$Res> {
  __$$AppAuthenticatedImplCopyWithImpl(_$AppAuthenticatedImpl _value,
      $Res Function(_$AppAuthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppStartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AppAuthenticatedImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of AppStartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AppAuthenticatedImpl implements AppAuthenticated {
  const _$AppAuthenticatedImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AppStartState.authenticated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppAuthenticatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AppStartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppAuthenticatedImplCopyWith<_$AppAuthenticatedImpl> get copyWith =>
      __$$AppAuthenticatedImplCopyWithImpl<_$AppAuthenticatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() internetUnAvailable,
    required TResult Function(User user) authenticated,
    required TResult Function() authenticatedAnonymous,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? internetUnAvailable,
    TResult? Function(User user)? authenticated,
    TResult? Function()? authenticatedAnonymous,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? internetUnAvailable,
    TResult Function(User user)? authenticated,
    TResult Function()? authenticatedAnonymous,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(_InternetUnAvailable value) internetUnAvailable,
    required TResult Function(AppAuthenticated value) authenticated,
    required TResult Function(AppAuthenticatedAnonymous value)
        authenticatedAnonymous,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(_InternetUnAvailable value)? internetUnAvailable,
    TResult? Function(AppAuthenticated value)? authenticated,
    TResult? Function(AppAuthenticatedAnonymous value)? authenticatedAnonymous,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(_InternetUnAvailable value)? internetUnAvailable,
    TResult Function(AppAuthenticated value)? authenticated,
    TResult Function(AppAuthenticatedAnonymous value)? authenticatedAnonymous,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AppAuthenticated implements AppStartState {
  const factory AppAuthenticated(final User user) = _$AppAuthenticatedImpl;

  User get user;

  /// Create a copy of AppStartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppAuthenticatedImplCopyWith<_$AppAuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppAuthenticatedAnonymousImplCopyWith<$Res> {
  factory _$$AppAuthenticatedAnonymousImplCopyWith(
          _$AppAuthenticatedAnonymousImpl value,
          $Res Function(_$AppAuthenticatedAnonymousImpl) then) =
      __$$AppAuthenticatedAnonymousImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppAuthenticatedAnonymousImplCopyWithImpl<$Res>
    extends _$AppStartStateCopyWithImpl<$Res, _$AppAuthenticatedAnonymousImpl>
    implements _$$AppAuthenticatedAnonymousImplCopyWith<$Res> {
  __$$AppAuthenticatedAnonymousImplCopyWithImpl(
      _$AppAuthenticatedAnonymousImpl _value,
      $Res Function(_$AppAuthenticatedAnonymousImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppStartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppAuthenticatedAnonymousImpl implements AppAuthenticatedAnonymous {
  const _$AppAuthenticatedAnonymousImpl();

  @override
  String toString() {
    return 'AppStartState.authenticatedAnonymous()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppAuthenticatedAnonymousImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() internetUnAvailable,
    required TResult Function(User user) authenticated,
    required TResult Function() authenticatedAnonymous,
  }) {
    return authenticatedAnonymous();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? internetUnAvailable,
    TResult? Function(User user)? authenticated,
    TResult? Function()? authenticatedAnonymous,
  }) {
    return authenticatedAnonymous?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? internetUnAvailable,
    TResult Function(User user)? authenticated,
    TResult Function()? authenticatedAnonymous,
    required TResult orElse(),
  }) {
    if (authenticatedAnonymous != null) {
      return authenticatedAnonymous();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(_InternetUnAvailable value) internetUnAvailable,
    required TResult Function(AppAuthenticated value) authenticated,
    required TResult Function(AppAuthenticatedAnonymous value)
        authenticatedAnonymous,
  }) {
    return authenticatedAnonymous(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(_InternetUnAvailable value)? internetUnAvailable,
    TResult? Function(AppAuthenticated value)? authenticated,
    TResult? Function(AppAuthenticatedAnonymous value)? authenticatedAnonymous,
  }) {
    return authenticatedAnonymous?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(_InternetUnAvailable value)? internetUnAvailable,
    TResult Function(AppAuthenticated value)? authenticated,
    TResult Function(AppAuthenticatedAnonymous value)? authenticatedAnonymous,
    required TResult orElse(),
  }) {
    if (authenticatedAnonymous != null) {
      return authenticatedAnonymous(this);
    }
    return orElse();
  }
}

abstract class AppAuthenticatedAnonymous implements AppStartState {
  const factory AppAuthenticatedAnonymous() = _$AppAuthenticatedAnonymousImpl;
}
