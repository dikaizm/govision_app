// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fundus_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FundusHistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Fundus> data) loaded,
    required TResult Function(AppException error) error,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Fundus> data)? loaded,
    TResult? Function(AppException error)? error,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Fundus> data)? loaded,
    TResult Function(AppException error)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FundusHistoryLoading value) loading,
    required TResult Function(_FundusHistoryLoaded value) loaded,
    required TResult Function(_FundusHistoryError value) error,
    required TResult Function(_FundusHistoryEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FundusHistoryLoading value)? loading,
    TResult? Function(_FundusHistoryLoaded value)? loaded,
    TResult? Function(_FundusHistoryError value)? error,
    TResult? Function(_FundusHistoryEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FundusHistoryLoading value)? loading,
    TResult Function(_FundusHistoryLoaded value)? loaded,
    TResult Function(_FundusHistoryError value)? error,
    TResult Function(_FundusHistoryEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FundusHistoryStateCopyWith<$Res> {
  factory $FundusHistoryStateCopyWith(
          FundusHistoryState value, $Res Function(FundusHistoryState) then) =
      _$FundusHistoryStateCopyWithImpl<$Res, FundusHistoryState>;
}

/// @nodoc
class _$FundusHistoryStateCopyWithImpl<$Res, $Val extends FundusHistoryState>
    implements $FundusHistoryStateCopyWith<$Res> {
  _$FundusHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FundusHistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FundusHistoryLoadingImplCopyWith<$Res> {
  factory _$$FundusHistoryLoadingImplCopyWith(_$FundusHistoryLoadingImpl value,
          $Res Function(_$FundusHistoryLoadingImpl) then) =
      __$$FundusHistoryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FundusHistoryLoadingImplCopyWithImpl<$Res>
    extends _$FundusHistoryStateCopyWithImpl<$Res, _$FundusHistoryLoadingImpl>
    implements _$$FundusHistoryLoadingImplCopyWith<$Res> {
  __$$FundusHistoryLoadingImplCopyWithImpl(_$FundusHistoryLoadingImpl _value,
      $Res Function(_$FundusHistoryLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FundusHistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FundusHistoryLoadingImpl implements _FundusHistoryLoading {
  const _$FundusHistoryLoadingImpl();

  @override
  String toString() {
    return 'FundusHistoryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FundusHistoryLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Fundus> data) loaded,
    required TResult Function(AppException error) error,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Fundus> data)? loaded,
    TResult? Function(AppException error)? error,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Fundus> data)? loaded,
    TResult Function(AppException error)? error,
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
    required TResult Function(_FundusHistoryLoading value) loading,
    required TResult Function(_FundusHistoryLoaded value) loaded,
    required TResult Function(_FundusHistoryError value) error,
    required TResult Function(_FundusHistoryEmpty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FundusHistoryLoading value)? loading,
    TResult? Function(_FundusHistoryLoaded value)? loaded,
    TResult? Function(_FundusHistoryError value)? error,
    TResult? Function(_FundusHistoryEmpty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FundusHistoryLoading value)? loading,
    TResult Function(_FundusHistoryLoaded value)? loaded,
    TResult Function(_FundusHistoryError value)? error,
    TResult Function(_FundusHistoryEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FundusHistoryLoading implements FundusHistoryState {
  const factory _FundusHistoryLoading() = _$FundusHistoryLoadingImpl;
}

/// @nodoc
abstract class _$$FundusHistoryLoadedImplCopyWith<$Res> {
  factory _$$FundusHistoryLoadedImplCopyWith(_$FundusHistoryLoadedImpl value,
          $Res Function(_$FundusHistoryLoadedImpl) then) =
      __$$FundusHistoryLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Fundus> data});
}

/// @nodoc
class __$$FundusHistoryLoadedImplCopyWithImpl<$Res>
    extends _$FundusHistoryStateCopyWithImpl<$Res, _$FundusHistoryLoadedImpl>
    implements _$$FundusHistoryLoadedImplCopyWith<$Res> {
  __$$FundusHistoryLoadedImplCopyWithImpl(_$FundusHistoryLoadedImpl _value,
      $Res Function(_$FundusHistoryLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FundusHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$FundusHistoryLoadedImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Fundus>,
    ));
  }
}

/// @nodoc

class _$FundusHistoryLoadedImpl implements _FundusHistoryLoaded {
  const _$FundusHistoryLoadedImpl(final List<Fundus> data) : _data = data;

  final List<Fundus> _data;
  @override
  List<Fundus> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'FundusHistoryState.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FundusHistoryLoadedImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of FundusHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FundusHistoryLoadedImplCopyWith<_$FundusHistoryLoadedImpl> get copyWith =>
      __$$FundusHistoryLoadedImplCopyWithImpl<_$FundusHistoryLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Fundus> data) loaded,
    required TResult Function(AppException error) error,
    required TResult Function() empty,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Fundus> data)? loaded,
    TResult? Function(AppException error)? error,
    TResult? Function()? empty,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Fundus> data)? loaded,
    TResult Function(AppException error)? error,
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
    required TResult Function(_FundusHistoryLoading value) loading,
    required TResult Function(_FundusHistoryLoaded value) loaded,
    required TResult Function(_FundusHistoryError value) error,
    required TResult Function(_FundusHistoryEmpty value) empty,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FundusHistoryLoading value)? loading,
    TResult? Function(_FundusHistoryLoaded value)? loaded,
    TResult? Function(_FundusHistoryError value)? error,
    TResult? Function(_FundusHistoryEmpty value)? empty,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FundusHistoryLoading value)? loading,
    TResult Function(_FundusHistoryLoaded value)? loaded,
    TResult Function(_FundusHistoryError value)? error,
    TResult Function(_FundusHistoryEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _FundusHistoryLoaded implements FundusHistoryState {
  const factory _FundusHistoryLoaded(final List<Fundus> data) =
      _$FundusHistoryLoadedImpl;

  List<Fundus> get data;

  /// Create a copy of FundusHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FundusHistoryLoadedImplCopyWith<_$FundusHistoryLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FundusHistoryErrorImplCopyWith<$Res> {
  factory _$$FundusHistoryErrorImplCopyWith(_$FundusHistoryErrorImpl value,
          $Res Function(_$FundusHistoryErrorImpl) then) =
      __$$FundusHistoryErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppException error});

  $AppExceptionCopyWith<$Res> get error;
}

/// @nodoc
class __$$FundusHistoryErrorImplCopyWithImpl<$Res>
    extends _$FundusHistoryStateCopyWithImpl<$Res, _$FundusHistoryErrorImpl>
    implements _$$FundusHistoryErrorImplCopyWith<$Res> {
  __$$FundusHistoryErrorImplCopyWithImpl(_$FundusHistoryErrorImpl _value,
      $Res Function(_$FundusHistoryErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of FundusHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FundusHistoryErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException,
    ));
  }

  /// Create a copy of FundusHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppExceptionCopyWith<$Res> get error {
    return $AppExceptionCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$FundusHistoryErrorImpl implements _FundusHistoryError {
  const _$FundusHistoryErrorImpl(this.error);

  @override
  final AppException error;

  @override
  String toString() {
    return 'FundusHistoryState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FundusHistoryErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of FundusHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FundusHistoryErrorImplCopyWith<_$FundusHistoryErrorImpl> get copyWith =>
      __$$FundusHistoryErrorImplCopyWithImpl<_$FundusHistoryErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Fundus> data) loaded,
    required TResult Function(AppException error) error,
    required TResult Function() empty,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Fundus> data)? loaded,
    TResult? Function(AppException error)? error,
    TResult? Function()? empty,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Fundus> data)? loaded,
    TResult Function(AppException error)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FundusHistoryLoading value) loading,
    required TResult Function(_FundusHistoryLoaded value) loaded,
    required TResult Function(_FundusHistoryError value) error,
    required TResult Function(_FundusHistoryEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FundusHistoryLoading value)? loading,
    TResult? Function(_FundusHistoryLoaded value)? loaded,
    TResult? Function(_FundusHistoryError value)? error,
    TResult? Function(_FundusHistoryEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FundusHistoryLoading value)? loading,
    TResult Function(_FundusHistoryLoaded value)? loaded,
    TResult Function(_FundusHistoryError value)? error,
    TResult Function(_FundusHistoryEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FundusHistoryError implements FundusHistoryState {
  const factory _FundusHistoryError(final AppException error) =
      _$FundusHistoryErrorImpl;

  AppException get error;

  /// Create a copy of FundusHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FundusHistoryErrorImplCopyWith<_$FundusHistoryErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FundusHistoryEmptyImplCopyWith<$Res> {
  factory _$$FundusHistoryEmptyImplCopyWith(_$FundusHistoryEmptyImpl value,
          $Res Function(_$FundusHistoryEmptyImpl) then) =
      __$$FundusHistoryEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FundusHistoryEmptyImplCopyWithImpl<$Res>
    extends _$FundusHistoryStateCopyWithImpl<$Res, _$FundusHistoryEmptyImpl>
    implements _$$FundusHistoryEmptyImplCopyWith<$Res> {
  __$$FundusHistoryEmptyImplCopyWithImpl(_$FundusHistoryEmptyImpl _value,
      $Res Function(_$FundusHistoryEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of FundusHistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FundusHistoryEmptyImpl implements _FundusHistoryEmpty {
  const _$FundusHistoryEmptyImpl();

  @override
  String toString() {
    return 'FundusHistoryState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FundusHistoryEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Fundus> data) loaded,
    required TResult Function(AppException error) error,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Fundus> data)? loaded,
    TResult? Function(AppException error)? error,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Fundus> data)? loaded,
    TResult Function(AppException error)? error,
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
    required TResult Function(_FundusHistoryLoading value) loading,
    required TResult Function(_FundusHistoryLoaded value) loaded,
    required TResult Function(_FundusHistoryError value) error,
    required TResult Function(_FundusHistoryEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FundusHistoryLoading value)? loading,
    TResult? Function(_FundusHistoryLoaded value)? loaded,
    TResult? Function(_FundusHistoryError value)? error,
    TResult? Function(_FundusHistoryEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FundusHistoryLoading value)? loading,
    TResult Function(_FundusHistoryLoaded value)? loaded,
    TResult Function(_FundusHistoryError value)? error,
    TResult Function(_FundusHistoryEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _FundusHistoryEmpty implements FundusHistoryState {
  const factory _FundusHistoryEmpty() = _$FundusHistoryEmptyImpl;
}

/// @nodoc
mixin _$FundusDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Fundus data) loaded,
    required TResult Function(AppException error) error,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Fundus data)? loaded,
    TResult? Function(AppException error)? error,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Fundus data)? loaded,
    TResult Function(AppException error)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FundusDetailLoading value) loading,
    required TResult Function(_FundusDetailLoaded value) loaded,
    required TResult Function(_FundusDetailError value) error,
    required TResult Function(_FundusDetailEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FundusDetailLoading value)? loading,
    TResult? Function(_FundusDetailLoaded value)? loaded,
    TResult? Function(_FundusDetailError value)? error,
    TResult? Function(_FundusDetailEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FundusDetailLoading value)? loading,
    TResult Function(_FundusDetailLoaded value)? loaded,
    TResult Function(_FundusDetailError value)? error,
    TResult Function(_FundusDetailEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FundusDetailStateCopyWith<$Res> {
  factory $FundusDetailStateCopyWith(
          FundusDetailState value, $Res Function(FundusDetailState) then) =
      _$FundusDetailStateCopyWithImpl<$Res, FundusDetailState>;
}

/// @nodoc
class _$FundusDetailStateCopyWithImpl<$Res, $Val extends FundusDetailState>
    implements $FundusDetailStateCopyWith<$Res> {
  _$FundusDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FundusDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FundusDetailLoadingImplCopyWith<$Res> {
  factory _$$FundusDetailLoadingImplCopyWith(_$FundusDetailLoadingImpl value,
          $Res Function(_$FundusDetailLoadingImpl) then) =
      __$$FundusDetailLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FundusDetailLoadingImplCopyWithImpl<$Res>
    extends _$FundusDetailStateCopyWithImpl<$Res, _$FundusDetailLoadingImpl>
    implements _$$FundusDetailLoadingImplCopyWith<$Res> {
  __$$FundusDetailLoadingImplCopyWithImpl(_$FundusDetailLoadingImpl _value,
      $Res Function(_$FundusDetailLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FundusDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FundusDetailLoadingImpl implements _FundusDetailLoading {
  const _$FundusDetailLoadingImpl();

  @override
  String toString() {
    return 'FundusDetailState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FundusDetailLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Fundus data) loaded,
    required TResult Function(AppException error) error,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Fundus data)? loaded,
    TResult? Function(AppException error)? error,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Fundus data)? loaded,
    TResult Function(AppException error)? error,
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
    required TResult Function(_FundusDetailLoading value) loading,
    required TResult Function(_FundusDetailLoaded value) loaded,
    required TResult Function(_FundusDetailError value) error,
    required TResult Function(_FundusDetailEmpty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FundusDetailLoading value)? loading,
    TResult? Function(_FundusDetailLoaded value)? loaded,
    TResult? Function(_FundusDetailError value)? error,
    TResult? Function(_FundusDetailEmpty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FundusDetailLoading value)? loading,
    TResult Function(_FundusDetailLoaded value)? loaded,
    TResult Function(_FundusDetailError value)? error,
    TResult Function(_FundusDetailEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FundusDetailLoading implements FundusDetailState {
  const factory _FundusDetailLoading() = _$FundusDetailLoadingImpl;
}

/// @nodoc
abstract class _$$FundusDetailLoadedImplCopyWith<$Res> {
  factory _$$FundusDetailLoadedImplCopyWith(_$FundusDetailLoadedImpl value,
          $Res Function(_$FundusDetailLoadedImpl) then) =
      __$$FundusDetailLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Fundus data});

  $FundusCopyWith<$Res> get data;
}

/// @nodoc
class __$$FundusDetailLoadedImplCopyWithImpl<$Res>
    extends _$FundusDetailStateCopyWithImpl<$Res, _$FundusDetailLoadedImpl>
    implements _$$FundusDetailLoadedImplCopyWith<$Res> {
  __$$FundusDetailLoadedImplCopyWithImpl(_$FundusDetailLoadedImpl _value,
      $Res Function(_$FundusDetailLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FundusDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$FundusDetailLoadedImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Fundus,
    ));
  }

  /// Create a copy of FundusDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FundusCopyWith<$Res> get data {
    return $FundusCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$FundusDetailLoadedImpl implements _FundusDetailLoaded {
  const _$FundusDetailLoadedImpl(this.data);

  @override
  final Fundus data;

  @override
  String toString() {
    return 'FundusDetailState.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FundusDetailLoadedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of FundusDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FundusDetailLoadedImplCopyWith<_$FundusDetailLoadedImpl> get copyWith =>
      __$$FundusDetailLoadedImplCopyWithImpl<_$FundusDetailLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Fundus data) loaded,
    required TResult Function(AppException error) error,
    required TResult Function() empty,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Fundus data)? loaded,
    TResult? Function(AppException error)? error,
    TResult? Function()? empty,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Fundus data)? loaded,
    TResult Function(AppException error)? error,
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
    required TResult Function(_FundusDetailLoading value) loading,
    required TResult Function(_FundusDetailLoaded value) loaded,
    required TResult Function(_FundusDetailError value) error,
    required TResult Function(_FundusDetailEmpty value) empty,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FundusDetailLoading value)? loading,
    TResult? Function(_FundusDetailLoaded value)? loaded,
    TResult? Function(_FundusDetailError value)? error,
    TResult? Function(_FundusDetailEmpty value)? empty,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FundusDetailLoading value)? loading,
    TResult Function(_FundusDetailLoaded value)? loaded,
    TResult Function(_FundusDetailError value)? error,
    TResult Function(_FundusDetailEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _FundusDetailLoaded implements FundusDetailState {
  const factory _FundusDetailLoaded(final Fundus data) =
      _$FundusDetailLoadedImpl;

  Fundus get data;

  /// Create a copy of FundusDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FundusDetailLoadedImplCopyWith<_$FundusDetailLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FundusDetailErrorImplCopyWith<$Res> {
  factory _$$FundusDetailErrorImplCopyWith(_$FundusDetailErrorImpl value,
          $Res Function(_$FundusDetailErrorImpl) then) =
      __$$FundusDetailErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppException error});

  $AppExceptionCopyWith<$Res> get error;
}

/// @nodoc
class __$$FundusDetailErrorImplCopyWithImpl<$Res>
    extends _$FundusDetailStateCopyWithImpl<$Res, _$FundusDetailErrorImpl>
    implements _$$FundusDetailErrorImplCopyWith<$Res> {
  __$$FundusDetailErrorImplCopyWithImpl(_$FundusDetailErrorImpl _value,
      $Res Function(_$FundusDetailErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of FundusDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FundusDetailErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException,
    ));
  }

  /// Create a copy of FundusDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppExceptionCopyWith<$Res> get error {
    return $AppExceptionCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$FundusDetailErrorImpl implements _FundusDetailError {
  const _$FundusDetailErrorImpl(this.error);

  @override
  final AppException error;

  @override
  String toString() {
    return 'FundusDetailState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FundusDetailErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of FundusDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FundusDetailErrorImplCopyWith<_$FundusDetailErrorImpl> get copyWith =>
      __$$FundusDetailErrorImplCopyWithImpl<_$FundusDetailErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Fundus data) loaded,
    required TResult Function(AppException error) error,
    required TResult Function() empty,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Fundus data)? loaded,
    TResult? Function(AppException error)? error,
    TResult? Function()? empty,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Fundus data)? loaded,
    TResult Function(AppException error)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FundusDetailLoading value) loading,
    required TResult Function(_FundusDetailLoaded value) loaded,
    required TResult Function(_FundusDetailError value) error,
    required TResult Function(_FundusDetailEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FundusDetailLoading value)? loading,
    TResult? Function(_FundusDetailLoaded value)? loaded,
    TResult? Function(_FundusDetailError value)? error,
    TResult? Function(_FundusDetailEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FundusDetailLoading value)? loading,
    TResult Function(_FundusDetailLoaded value)? loaded,
    TResult Function(_FundusDetailError value)? error,
    TResult Function(_FundusDetailEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FundusDetailError implements FundusDetailState {
  const factory _FundusDetailError(final AppException error) =
      _$FundusDetailErrorImpl;

  AppException get error;

  /// Create a copy of FundusDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FundusDetailErrorImplCopyWith<_$FundusDetailErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FundusDetailEmptyImplCopyWith<$Res> {
  factory _$$FundusDetailEmptyImplCopyWith(_$FundusDetailEmptyImpl value,
          $Res Function(_$FundusDetailEmptyImpl) then) =
      __$$FundusDetailEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FundusDetailEmptyImplCopyWithImpl<$Res>
    extends _$FundusDetailStateCopyWithImpl<$Res, _$FundusDetailEmptyImpl>
    implements _$$FundusDetailEmptyImplCopyWith<$Res> {
  __$$FundusDetailEmptyImplCopyWithImpl(_$FundusDetailEmptyImpl _value,
      $Res Function(_$FundusDetailEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of FundusDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FundusDetailEmptyImpl implements _FundusDetailEmpty {
  const _$FundusDetailEmptyImpl();

  @override
  String toString() {
    return 'FundusDetailState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FundusDetailEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Fundus data) loaded,
    required TResult Function(AppException error) error,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Fundus data)? loaded,
    TResult? Function(AppException error)? error,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Fundus data)? loaded,
    TResult Function(AppException error)? error,
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
    required TResult Function(_FundusDetailLoading value) loading,
    required TResult Function(_FundusDetailLoaded value) loaded,
    required TResult Function(_FundusDetailError value) error,
    required TResult Function(_FundusDetailEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FundusDetailLoading value)? loading,
    TResult? Function(_FundusDetailLoaded value)? loaded,
    TResult? Function(_FundusDetailError value)? error,
    TResult? Function(_FundusDetailEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FundusDetailLoading value)? loading,
    TResult Function(_FundusDetailLoaded value)? loaded,
    TResult Function(_FundusDetailError value)? error,
    TResult Function(_FundusDetailEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _FundusDetailEmpty implements FundusDetailState {
  const factory _FundusDetailEmpty() = _$FundusDetailEmptyImpl;
}
