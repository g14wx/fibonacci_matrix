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
    required TResult Function(InitialState value) initialState,
    required TResult Function(GenerateFibonacci value) generateFibonacci,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initialState,
    TResult? Function(GenerateFibonacci value)? generateFibonacci,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(GenerateFibonacci value)? generateFibonacci,
    TResult Function(Error value)? error,
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
abstract class _$$InitialStateCopyWith<$Res> {
  factory _$$InitialStateCopyWith(
          _$InitialState value, $Res Function(_$InitialState) then) =
      __$$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateCopyWithImpl<$Res>
    extends _$FibonacciStateCopyWithImpl<$Res, _$InitialState>
    implements _$$InitialStateCopyWith<$Res> {
  __$$InitialStateCopyWithImpl(
      _$InitialState _value, $Res Function(_$InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialState implements InitialState {
  const _$InitialState();

  @override
  String toString() {
    return 'FibonacciState.initialState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialState);
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
    required TResult Function(InitialState value) initialState,
    required TResult Function(GenerateFibonacci value) generateFibonacci,
    required TResult Function(Error value) error,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initialState,
    TResult? Function(GenerateFibonacci value)? generateFibonacci,
    TResult? Function(Error value)? error,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(GenerateFibonacci value)? generateFibonacci,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class InitialState implements FibonacciState {
  const factory InitialState() = _$InitialState;
}

/// @nodoc
abstract class _$$GenerateFibonacciCopyWith<$Res> {
  factory _$$GenerateFibonacciCopyWith(
          _$GenerateFibonacci value, $Res Function(_$GenerateFibonacci) then) =
      __$$GenerateFibonacciCopyWithImpl<$Res>;
  @useResult
  $Res call({List<List<int>> fibonacci, int sum});
}

/// @nodoc
class __$$GenerateFibonacciCopyWithImpl<$Res>
    extends _$FibonacciStateCopyWithImpl<$Res, _$GenerateFibonacci>
    implements _$$GenerateFibonacciCopyWith<$Res> {
  __$$GenerateFibonacciCopyWithImpl(
      _$GenerateFibonacci _value, $Res Function(_$GenerateFibonacci) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fibonacci = null,
    Object? sum = null,
  }) {
    return _then(_$GenerateFibonacci(
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

class _$GenerateFibonacci implements GenerateFibonacci {
  const _$GenerateFibonacci(
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
            other is _$GenerateFibonacci &&
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
  _$$GenerateFibonacciCopyWith<_$GenerateFibonacci> get copyWith =>
      __$$GenerateFibonacciCopyWithImpl<_$GenerateFibonacci>(this, _$identity);

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
    required TResult Function(InitialState value) initialState,
    required TResult Function(GenerateFibonacci value) generateFibonacci,
    required TResult Function(Error value) error,
  }) {
    return generateFibonacci(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initialState,
    TResult? Function(GenerateFibonacci value)? generateFibonacci,
    TResult? Function(Error value)? error,
  }) {
    return generateFibonacci?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(GenerateFibonacci value)? generateFibonacci,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (generateFibonacci != null) {
      return generateFibonacci(this);
    }
    return orElse();
  }
}

abstract class GenerateFibonacci implements FibonacciState {
  const factory GenerateFibonacci(
      {required final List<List<int>> fibonacci,
      required final int sum}) = _$GenerateFibonacci;

  List<List<int>> get fibonacci;
  int get sum;
  @JsonKey(ignore: true)
  _$$GenerateFibonacciCopyWith<_$GenerateFibonacci> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, bool update});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$FibonacciStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? update = null,
  }) {
    return _then(_$Error(
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

class _$Error implements Error {
  const _$Error({required this.message, required this.update});

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
            other is _$Error &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.update, update) || other.update == update));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, update);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

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
    required TResult Function(InitialState value) initialState,
    required TResult Function(GenerateFibonacci value) generateFibonacci,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initialState,
    TResult? Function(GenerateFibonacci value)? generateFibonacci,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(GenerateFibonacci value)? generateFibonacci,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements FibonacciState {
  const factory Error(
      {required final String message, required final bool update}) = _$Error;

  String get message;
  bool get update;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}
