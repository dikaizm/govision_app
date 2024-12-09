// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String data) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String data)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String data) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadedImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.data);

  @override
  final String data;

  @override
  String toString() {
    return 'HomeState.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String data) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements HomeState {
  const factory _Loaded(final String data) = _$LoadedImpl;

  String get data;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String data) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HomeState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HeroState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Hero data) loaded,
    required TResult Function(AppException message) error,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Hero data)? loaded,
    TResult? Function(AppException message)? error,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Hero data)? loaded,
    TResult Function(AppException message)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HeroLoading value) loading,
    required TResult Function(_HeroLoaded value) loaded,
    required TResult Function(_HeroError value) error,
    required TResult Function(_HeroEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HeroLoading value)? loading,
    TResult? Function(_HeroLoaded value)? loaded,
    TResult? Function(_HeroError value)? error,
    TResult? Function(_HeroEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HeroLoading value)? loading,
    TResult Function(_HeroLoaded value)? loaded,
    TResult Function(_HeroError value)? error,
    TResult Function(_HeroEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeroStateCopyWith<$Res> {
  factory $HeroStateCopyWith(HeroState value, $Res Function(HeroState) then) =
      _$HeroStateCopyWithImpl<$Res, HeroState>;
}

/// @nodoc
class _$HeroStateCopyWithImpl<$Res, $Val extends HeroState>
    implements $HeroStateCopyWith<$Res> {
  _$HeroStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeroState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HeroLoadingImplCopyWith<$Res> {
  factory _$$HeroLoadingImplCopyWith(
          _$HeroLoadingImpl value, $Res Function(_$HeroLoadingImpl) then) =
      __$$HeroLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HeroLoadingImplCopyWithImpl<$Res>
    extends _$HeroStateCopyWithImpl<$Res, _$HeroLoadingImpl>
    implements _$$HeroLoadingImplCopyWith<$Res> {
  __$$HeroLoadingImplCopyWithImpl(
      _$HeroLoadingImpl _value, $Res Function(_$HeroLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeroState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HeroLoadingImpl implements _HeroLoading {
  const _$HeroLoadingImpl();

  @override
  String toString() {
    return 'HeroState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HeroLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Hero data) loaded,
    required TResult Function(AppException message) error,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Hero data)? loaded,
    TResult? Function(AppException message)? error,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Hero data)? loaded,
    TResult Function(AppException message)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HeroLoading value) loading,
    required TResult Function(_HeroLoaded value) loaded,
    required TResult Function(_HeroError value) error,
    required TResult Function(_HeroEmpty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HeroLoading value)? loading,
    TResult? Function(_HeroLoaded value)? loaded,
    TResult? Function(_HeroError value)? error,
    TResult? Function(_HeroEmpty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HeroLoading value)? loading,
    TResult Function(_HeroLoaded value)? loaded,
    TResult Function(_HeroError value)? error,
    TResult Function(_HeroEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HeroLoading implements HeroState {
  const factory _HeroLoading() = _$HeroLoadingImpl;
}

/// @nodoc
abstract class _$$HeroLoadedImplCopyWith<$Res> {
  factory _$$HeroLoadedImplCopyWith(
          _$HeroLoadedImpl value, $Res Function(_$HeroLoadedImpl) then) =
      __$$HeroLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Hero data});

  $HeroCopyWith<$Res> get data;
}

/// @nodoc
class __$$HeroLoadedImplCopyWithImpl<$Res>
    extends _$HeroStateCopyWithImpl<$Res, _$HeroLoadedImpl>
    implements _$$HeroLoadedImplCopyWith<$Res> {
  __$$HeroLoadedImplCopyWithImpl(
      _$HeroLoadedImpl _value, $Res Function(_$HeroLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeroState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$HeroLoadedImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Hero,
    ));
  }

  /// Create a copy of HeroState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeroCopyWith<$Res> get data {
    return $HeroCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$HeroLoadedImpl implements _HeroLoaded {
  const _$HeroLoadedImpl(this.data);

  @override
  final Hero data;

  @override
  String toString() {
    return 'HeroState.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeroLoadedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of HeroState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeroLoadedImplCopyWith<_$HeroLoadedImpl> get copyWith =>
      __$$HeroLoadedImplCopyWithImpl<_$HeroLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Hero data) loaded,
    required TResult Function(AppException message) error,
    required TResult Function() empty,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Hero data)? loaded,
    TResult? Function(AppException message)? error,
    TResult? Function()? empty,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Hero data)? loaded,
    TResult Function(AppException message)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HeroLoading value) loading,
    required TResult Function(_HeroLoaded value) loaded,
    required TResult Function(_HeroError value) error,
    required TResult Function(_HeroEmpty value) empty,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HeroLoading value)? loading,
    TResult? Function(_HeroLoaded value)? loaded,
    TResult? Function(_HeroError value)? error,
    TResult? Function(_HeroEmpty value)? empty,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HeroLoading value)? loading,
    TResult Function(_HeroLoaded value)? loaded,
    TResult Function(_HeroError value)? error,
    TResult Function(_HeroEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _HeroLoaded implements HeroState {
  const factory _HeroLoaded(final Hero data) = _$HeroLoadedImpl;

  Hero get data;

  /// Create a copy of HeroState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeroLoadedImplCopyWith<_$HeroLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HeroErrorImplCopyWith<$Res> {
  factory _$$HeroErrorImplCopyWith(
          _$HeroErrorImpl value, $Res Function(_$HeroErrorImpl) then) =
      __$$HeroErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppException message});

  $AppExceptionCopyWith<$Res> get message;
}

/// @nodoc
class __$$HeroErrorImplCopyWithImpl<$Res>
    extends _$HeroStateCopyWithImpl<$Res, _$HeroErrorImpl>
    implements _$$HeroErrorImplCopyWith<$Res> {
  __$$HeroErrorImplCopyWithImpl(
      _$HeroErrorImpl _value, $Res Function(_$HeroErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeroState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$HeroErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as AppException,
    ));
  }

  /// Create a copy of HeroState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppExceptionCopyWith<$Res> get message {
    return $AppExceptionCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$HeroErrorImpl implements _HeroError {
  const _$HeroErrorImpl(this.message);

  @override
  final AppException message;

  @override
  String toString() {
    return 'HeroState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeroErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of HeroState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeroErrorImplCopyWith<_$HeroErrorImpl> get copyWith =>
      __$$HeroErrorImplCopyWithImpl<_$HeroErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Hero data) loaded,
    required TResult Function(AppException message) error,
    required TResult Function() empty,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Hero data)? loaded,
    TResult? Function(AppException message)? error,
    TResult? Function()? empty,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Hero data)? loaded,
    TResult Function(AppException message)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HeroLoading value) loading,
    required TResult Function(_HeroLoaded value) loaded,
    required TResult Function(_HeroError value) error,
    required TResult Function(_HeroEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HeroLoading value)? loading,
    TResult? Function(_HeroLoaded value)? loaded,
    TResult? Function(_HeroError value)? error,
    TResult? Function(_HeroEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HeroLoading value)? loading,
    TResult Function(_HeroLoaded value)? loaded,
    TResult Function(_HeroError value)? error,
    TResult Function(_HeroEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _HeroError implements HeroState {
  const factory _HeroError(final AppException message) = _$HeroErrorImpl;

  AppException get message;

  /// Create a copy of HeroState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeroErrorImplCopyWith<_$HeroErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HeroEmptyImplCopyWith<$Res> {
  factory _$$HeroEmptyImplCopyWith(
          _$HeroEmptyImpl value, $Res Function(_$HeroEmptyImpl) then) =
      __$$HeroEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HeroEmptyImplCopyWithImpl<$Res>
    extends _$HeroStateCopyWithImpl<$Res, _$HeroEmptyImpl>
    implements _$$HeroEmptyImplCopyWith<$Res> {
  __$$HeroEmptyImplCopyWithImpl(
      _$HeroEmptyImpl _value, $Res Function(_$HeroEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeroState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HeroEmptyImpl implements _HeroEmpty {
  const _$HeroEmptyImpl();

  @override
  String toString() {
    return 'HeroState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HeroEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Hero data) loaded,
    required TResult Function(AppException message) error,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Hero data)? loaded,
    TResult? Function(AppException message)? error,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Hero data)? loaded,
    TResult Function(AppException message)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HeroLoading value) loading,
    required TResult Function(_HeroLoaded value) loaded,
    required TResult Function(_HeroError value) error,
    required TResult Function(_HeroEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HeroLoading value)? loading,
    TResult? Function(_HeroLoaded value)? loaded,
    TResult? Function(_HeroError value)? error,
    TResult? Function(_HeroEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HeroLoading value)? loading,
    TResult Function(_HeroLoaded value)? loaded,
    TResult Function(_HeroError value)? error,
    TResult Function(_HeroEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _HeroEmpty implements HeroState {
  const factory _HeroEmpty() = _$HeroEmptyImpl;
}

/// @nodoc
mixin _$HeroArticleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Article2> data) loaded,
    required TResult Function(AppException message) error,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Article2> data)? loaded,
    TResult? Function(AppException message)? error,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article2> data)? loaded,
    TResult Function(AppException message)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HeroArticleLoading value) loading,
    required TResult Function(_HeroArticleLoaded value) loaded,
    required TResult Function(_HeroArticleError value) error,
    required TResult Function(_HeroArticleEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HeroArticleLoading value)? loading,
    TResult? Function(_HeroArticleLoaded value)? loaded,
    TResult? Function(_HeroArticleError value)? error,
    TResult? Function(_HeroArticleEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HeroArticleLoading value)? loading,
    TResult Function(_HeroArticleLoaded value)? loaded,
    TResult Function(_HeroArticleError value)? error,
    TResult Function(_HeroArticleEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeroArticleStateCopyWith<$Res> {
  factory $HeroArticleStateCopyWith(
          HeroArticleState value, $Res Function(HeroArticleState) then) =
      _$HeroArticleStateCopyWithImpl<$Res, HeroArticleState>;
}

/// @nodoc
class _$HeroArticleStateCopyWithImpl<$Res, $Val extends HeroArticleState>
    implements $HeroArticleStateCopyWith<$Res> {
  _$HeroArticleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeroArticleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HeroArticleLoadingImplCopyWith<$Res> {
  factory _$$HeroArticleLoadingImplCopyWith(_$HeroArticleLoadingImpl value,
          $Res Function(_$HeroArticleLoadingImpl) then) =
      __$$HeroArticleLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HeroArticleLoadingImplCopyWithImpl<$Res>
    extends _$HeroArticleStateCopyWithImpl<$Res, _$HeroArticleLoadingImpl>
    implements _$$HeroArticleLoadingImplCopyWith<$Res> {
  __$$HeroArticleLoadingImplCopyWithImpl(_$HeroArticleLoadingImpl _value,
      $Res Function(_$HeroArticleLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeroArticleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HeroArticleLoadingImpl implements _HeroArticleLoading {
  const _$HeroArticleLoadingImpl();

  @override
  String toString() {
    return 'HeroArticleState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HeroArticleLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Article2> data) loaded,
    required TResult Function(AppException message) error,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Article2> data)? loaded,
    TResult? Function(AppException message)? error,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article2> data)? loaded,
    TResult Function(AppException message)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HeroArticleLoading value) loading,
    required TResult Function(_HeroArticleLoaded value) loaded,
    required TResult Function(_HeroArticleError value) error,
    required TResult Function(_HeroArticleEmpty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HeroArticleLoading value)? loading,
    TResult? Function(_HeroArticleLoaded value)? loaded,
    TResult? Function(_HeroArticleError value)? error,
    TResult? Function(_HeroArticleEmpty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HeroArticleLoading value)? loading,
    TResult Function(_HeroArticleLoaded value)? loaded,
    TResult Function(_HeroArticleError value)? error,
    TResult Function(_HeroArticleEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HeroArticleLoading implements HeroArticleState {
  const factory _HeroArticleLoading() = _$HeroArticleLoadingImpl;
}

/// @nodoc
abstract class _$$HeroArticleLoadedImplCopyWith<$Res> {
  factory _$$HeroArticleLoadedImplCopyWith(_$HeroArticleLoadedImpl value,
          $Res Function(_$HeroArticleLoadedImpl) then) =
      __$$HeroArticleLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Article2> data});
}

/// @nodoc
class __$$HeroArticleLoadedImplCopyWithImpl<$Res>
    extends _$HeroArticleStateCopyWithImpl<$Res, _$HeroArticleLoadedImpl>
    implements _$$HeroArticleLoadedImplCopyWith<$Res> {
  __$$HeroArticleLoadedImplCopyWithImpl(_$HeroArticleLoadedImpl _value,
      $Res Function(_$HeroArticleLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeroArticleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$HeroArticleLoadedImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Article2>,
    ));
  }
}

/// @nodoc

class _$HeroArticleLoadedImpl implements _HeroArticleLoaded {
  const _$HeroArticleLoadedImpl(final List<Article2> data) : _data = data;

  final List<Article2> _data;
  @override
  List<Article2> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'HeroArticleState.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeroArticleLoadedImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of HeroArticleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeroArticleLoadedImplCopyWith<_$HeroArticleLoadedImpl> get copyWith =>
      __$$HeroArticleLoadedImplCopyWithImpl<_$HeroArticleLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Article2> data) loaded,
    required TResult Function(AppException message) error,
    required TResult Function() empty,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Article2> data)? loaded,
    TResult? Function(AppException message)? error,
    TResult? Function()? empty,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article2> data)? loaded,
    TResult Function(AppException message)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HeroArticleLoading value) loading,
    required TResult Function(_HeroArticleLoaded value) loaded,
    required TResult Function(_HeroArticleError value) error,
    required TResult Function(_HeroArticleEmpty value) empty,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HeroArticleLoading value)? loading,
    TResult? Function(_HeroArticleLoaded value)? loaded,
    TResult? Function(_HeroArticleError value)? error,
    TResult? Function(_HeroArticleEmpty value)? empty,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HeroArticleLoading value)? loading,
    TResult Function(_HeroArticleLoaded value)? loaded,
    TResult Function(_HeroArticleError value)? error,
    TResult Function(_HeroArticleEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _HeroArticleLoaded implements HeroArticleState {
  const factory _HeroArticleLoaded(final List<Article2> data) =
      _$HeroArticleLoadedImpl;

  List<Article2> get data;

  /// Create a copy of HeroArticleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeroArticleLoadedImplCopyWith<_$HeroArticleLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HeroArticleErrorImplCopyWith<$Res> {
  factory _$$HeroArticleErrorImplCopyWith(_$HeroArticleErrorImpl value,
          $Res Function(_$HeroArticleErrorImpl) then) =
      __$$HeroArticleErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppException message});

  $AppExceptionCopyWith<$Res> get message;
}

/// @nodoc
class __$$HeroArticleErrorImplCopyWithImpl<$Res>
    extends _$HeroArticleStateCopyWithImpl<$Res, _$HeroArticleErrorImpl>
    implements _$$HeroArticleErrorImplCopyWith<$Res> {
  __$$HeroArticleErrorImplCopyWithImpl(_$HeroArticleErrorImpl _value,
      $Res Function(_$HeroArticleErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeroArticleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$HeroArticleErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as AppException,
    ));
  }

  /// Create a copy of HeroArticleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppExceptionCopyWith<$Res> get message {
    return $AppExceptionCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$HeroArticleErrorImpl implements _HeroArticleError {
  const _$HeroArticleErrorImpl(this.message);

  @override
  final AppException message;

  @override
  String toString() {
    return 'HeroArticleState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeroArticleErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of HeroArticleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeroArticleErrorImplCopyWith<_$HeroArticleErrorImpl> get copyWith =>
      __$$HeroArticleErrorImplCopyWithImpl<_$HeroArticleErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Article2> data) loaded,
    required TResult Function(AppException message) error,
    required TResult Function() empty,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Article2> data)? loaded,
    TResult? Function(AppException message)? error,
    TResult? Function()? empty,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article2> data)? loaded,
    TResult Function(AppException message)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HeroArticleLoading value) loading,
    required TResult Function(_HeroArticleLoaded value) loaded,
    required TResult Function(_HeroArticleError value) error,
    required TResult Function(_HeroArticleEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HeroArticleLoading value)? loading,
    TResult? Function(_HeroArticleLoaded value)? loaded,
    TResult? Function(_HeroArticleError value)? error,
    TResult? Function(_HeroArticleEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HeroArticleLoading value)? loading,
    TResult Function(_HeroArticleLoaded value)? loaded,
    TResult Function(_HeroArticleError value)? error,
    TResult Function(_HeroArticleEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _HeroArticleError implements HeroArticleState {
  const factory _HeroArticleError(final AppException message) =
      _$HeroArticleErrorImpl;

  AppException get message;

  /// Create a copy of HeroArticleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeroArticleErrorImplCopyWith<_$HeroArticleErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HeroArticleEmptyImplCopyWith<$Res> {
  factory _$$HeroArticleEmptyImplCopyWith(_$HeroArticleEmptyImpl value,
          $Res Function(_$HeroArticleEmptyImpl) then) =
      __$$HeroArticleEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HeroArticleEmptyImplCopyWithImpl<$Res>
    extends _$HeroArticleStateCopyWithImpl<$Res, _$HeroArticleEmptyImpl>
    implements _$$HeroArticleEmptyImplCopyWith<$Res> {
  __$$HeroArticleEmptyImplCopyWithImpl(_$HeroArticleEmptyImpl _value,
      $Res Function(_$HeroArticleEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeroArticleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HeroArticleEmptyImpl implements _HeroArticleEmpty {
  const _$HeroArticleEmptyImpl();

  @override
  String toString() {
    return 'HeroArticleState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HeroArticleEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Article2> data) loaded,
    required TResult Function(AppException message) error,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Article2> data)? loaded,
    TResult? Function(AppException message)? error,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article2> data)? loaded,
    TResult Function(AppException message)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HeroArticleLoading value) loading,
    required TResult Function(_HeroArticleLoaded value) loaded,
    required TResult Function(_HeroArticleError value) error,
    required TResult Function(_HeroArticleEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HeroArticleLoading value)? loading,
    TResult? Function(_HeroArticleLoaded value)? loaded,
    TResult? Function(_HeroArticleError value)? error,
    TResult? Function(_HeroArticleEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HeroArticleLoading value)? loading,
    TResult Function(_HeroArticleLoaded value)? loaded,
    TResult Function(_HeroArticleError value)? error,
    TResult Function(_HeroArticleEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _HeroArticleEmpty implements HeroArticleState {
  const factory _HeroArticleEmpty() = _$HeroArticleEmptyImpl;
}
