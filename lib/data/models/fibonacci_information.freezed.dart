// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fibonacci_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FibonacciInformation {
  int get columnIndex => throw _privateConstructorUsedError;
  int get rowIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FibonacciInformationCopyWith<FibonacciInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FibonacciInformationCopyWith<$Res> {
  factory $FibonacciInformationCopyWith(FibonacciInformation value,
          $Res Function(FibonacciInformation) then) =
      _$FibonacciInformationCopyWithImpl<$Res, FibonacciInformation>;
  @useResult
  $Res call({int columnIndex, int rowIndex});
}

/// @nodoc
class _$FibonacciInformationCopyWithImpl<$Res,
        $Val extends FibonacciInformation>
    implements $FibonacciInformationCopyWith<$Res> {
  _$FibonacciInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? columnIndex = null,
    Object? rowIndex = null,
  }) {
    return _then(_value.copyWith(
      columnIndex: null == columnIndex
          ? _value.columnIndex
          : columnIndex // ignore: cast_nullable_to_non_nullable
              as int,
      rowIndex: null == rowIndex
          ? _value.rowIndex
          : rowIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FibonacciInformationCopyWith<$Res>
    implements $FibonacciInformationCopyWith<$Res> {
  factory _$$_FibonacciInformationCopyWith(_$_FibonacciInformation value,
          $Res Function(_$_FibonacciInformation) then) =
      __$$_FibonacciInformationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int columnIndex, int rowIndex});
}

/// @nodoc
class __$$_FibonacciInformationCopyWithImpl<$Res>
    extends _$FibonacciInformationCopyWithImpl<$Res, _$_FibonacciInformation>
    implements _$$_FibonacciInformationCopyWith<$Res> {
  __$$_FibonacciInformationCopyWithImpl(_$_FibonacciInformation _value,
      $Res Function(_$_FibonacciInformation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? columnIndex = null,
    Object? rowIndex = null,
  }) {
    return _then(_$_FibonacciInformation(
      columnIndex: null == columnIndex
          ? _value.columnIndex
          : columnIndex // ignore: cast_nullable_to_non_nullable
              as int,
      rowIndex: null == rowIndex
          ? _value.rowIndex
          : rowIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FibonacciInformation implements _FibonacciInformation {
  const _$_FibonacciInformation(
      {required this.columnIndex, required this.rowIndex});

  @override
  final int columnIndex;
  @override
  final int rowIndex;

  @override
  String toString() {
    return 'FibonacciInformation(columnIndex: $columnIndex, rowIndex: $rowIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FibonacciInformation &&
            (identical(other.columnIndex, columnIndex) ||
                other.columnIndex == columnIndex) &&
            (identical(other.rowIndex, rowIndex) ||
                other.rowIndex == rowIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, columnIndex, rowIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FibonacciInformationCopyWith<_$_FibonacciInformation> get copyWith =>
      __$$_FibonacciInformationCopyWithImpl<_$_FibonacciInformation>(
          this, _$identity);
}

abstract class _FibonacciInformation implements FibonacciInformation {
  const factory _FibonacciInformation(
      {required final int columnIndex,
      required final int rowIndex}) = _$_FibonacciInformation;

  @override
  int get columnIndex;
  @override
  int get rowIndex;
  @override
  @JsonKey(ignore: true)
  _$$_FibonacciInformationCopyWith<_$_FibonacciInformation> get copyWith =>
      throw _privateConstructorUsedError;
}
