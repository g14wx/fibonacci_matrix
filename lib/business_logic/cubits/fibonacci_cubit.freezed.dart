// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fibonacci_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FibonacciState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(List<List<int>> fibonacci, int sum)
        generateFibonacci,
    required TResult Function(String message, bool update) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(List<List<int>> fibonacci, int sum)? generateFibonacci,
    TResult? Function(String message, bool update)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(List<List<int>> fibonacci, int sum)? generateFibonacci,
    TResult Function(String message, bool update)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_GenerateFibonacci value) generateFibonacci,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_GenerateFibonacci value)? generateFibonacci,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_GenerateFibonacci value)? generateFibonacci,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FibonacciStateCopyWith<$Res> {
  factory $FibonacciStateCopyWith(
          FibonacciState value, $Res Function(FibonacciState) then) =
      _$FibonacciStateCopyWithImpl<$Res, FibonacciState>;
}

/// @nodoc
class _$FibonacciStateCopyWithImpl<$Res, $Val extends FibonacciState>
    implements $FibonacciStateCopyWith<$Res> {
  _$FibonacciStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialStateCopyWith<$Res> {
  factory _$$_InitialStateCopyWith(
          _$_InitialState value, $Res Function(_$_InitialState) then) =
      __$$_InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$FibonacciStateCopyWithImpl<$Res, _$_InitialState>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialState implements _InitialState {
  const _$_InitialState();

  @override
  String toString() {
    return 'FibonacciState.initialState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(List<List<int>> fibonacci, int sum)
        generateFibonacci,
    required TResult Function(String message, bool update) error,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(List<List<int>> fibonacci, int sum)? generateFibonacci,
    TResult? Function(String message, bool update)? error,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(List<List<int>> fibonacci, int sum)? generateFibonacci,
    TResult Function(String message, bool update)? error,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_GenerateFibonacci value) generateFibonacci,
    required TResult Function(_Error value) error,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_GenerateFibonacci value)? generateFibonacci,
    TResult? Function(_Error value)? error,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_GenerateFibonacci value)? generateFibonacci,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements FibonacciState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$$_GenerateFibonacciCopyWith<$Res> {
  factory _$$_GenerateFibonacciCopyWith(_$_GenerateFibonacci value,
          $Res Function(_$_GenerateFibonacci) then) =
      __$$_GenerateFibonacciCopyWithImpl<$Res>;
  @useResult
  $Res call({List<List<int>> fibonacci, int sum});
}

/// @nodoc
class __$$_GenerateFibonacciCopyWithImpl<$Res>
    extends _$FibonacciStateCopyWithImpl<$Res, _$_GenerateFibonacci>
    implements _$$_GenerateFibonacciCopyWith<$Res> {
  __$$_GenerateFibonacciCopyWithImpl(
      _$_GenerateFibonacci _value, $Res Function(_$_GenerateFibonacci) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fibonacci = null,
    Object? sum = null,
  }) {
    return _then(_$_GenerateFibonacci(
      fibonacci: null == fibonacci
          ? _value._fibonacci
          : fibonacci // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GenerateFibonacci implements _GenerateFibonacci {
  const _$_GenerateFibonacci(
      {required final List<List<int>> fibonacci, required this.sum})
      : _fibonacci = fibonacci;

  final List<List<int>> _fibonacci;
  @override
  List<List<int>> get fibonacci {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fibonacci);
  }

  @override
  final int sum;

  @override
  String toString() {
    return 'FibonacciState.generateFibonacci(fibonacci: $fibonacci, sum: $sum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerateFibonacci &&
            const DeepCollectionEquality()
                .equals(other._fibonacci, _fibonacci) &&
            (identical(other.sum, sum) || other.sum == sum));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_fibonacci), sum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerateFibonacciCopyWith<_$_GenerateFibonacci> get copyWith =>
      __$$_GenerateFibonacciCopyWithImpl<_$_GenerateFibonacci>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(List<List<int>> fibonacci, int sum)
        generateFibonacci,
    required TResult Function(String message, bool update) error,
  }) {
    return generateFibonacci(fibonacci, sum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(List<List<int>> fibonacci, int sum)? generateFibonacci,
    TResult? Function(String message, bool update)? error,
  }) {
    return generateFibonacci?.call(fibonacci, sum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(List<List<int>> fibonacci, int sum)? generateFibonacci,
    TResult Function(String message, bool update)? error,
    required TResult orElse(),
  }) {
    if (generateFibonacci != null) {
      return generateFibonacci(fibonacci, sum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_GenerateFibonacci value) generateFibonacci,
    required TResult Function(_Error value) error,
  }) {
    return generateFibonacci(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_GenerateFibonacci value)? generateFibonacci,
    TResult? Function(_Error value)? error,
  }) {
    return generateFibonacci?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_GenerateFibonacci value)? generateFibonacci,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (generateFibonacci != null) {
      return generateFibonacci(this);
    }
    return orElse();
  }
}

abstract class _GenerateFibonacci implements FibonacciState {
  const factory _GenerateFibonacci(
      {required final List<List<int>> fibonacci,
      required final int sum}) = _$_GenerateFibonacci;

  List<List<int>> get fibonacci;
  int get sum;
  @JsonKey(ignore: true)
  _$$_GenerateFibonacciCopyWith<_$_GenerateFibonacci> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, bool update});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$FibonacciStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? update = null,
  }) {
    return _then(_$_Error(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      update: null == update
          ? _value.update
          : update // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.message, required this.update});

  @override
  final String message;
  @override
  final bool update;

  @override
  String toString() {
    return 'FibonacciState.error(message: $message, update: $update)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.update, update) || other.update == update));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, update);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(List<List<int>> fibonacci, int sum)
        generateFibonacci,
    required TResult Function(String message, bool update) error,
  }) {
    return error(message, update);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(List<List<int>> fibonacci, int sum)? generateFibonacci,
    TResult? Function(String message, bool update)? error,
  }) {
    return error?.call(message, update);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(List<List<int>> fibonacci, int sum)? generateFibonacci,
    TResult Function(String message, bool update)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, update);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_GenerateFibonacci value) generateFibonacci,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_GenerateFibonacci value)? generateFibonacci,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_GenerateFibonacci value)? generateFibonacci,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements FibonacciState {
  const factory _Error(
      {required final String message, required final bool update}) = _$_Error;

  String get message;
  bool get update;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
