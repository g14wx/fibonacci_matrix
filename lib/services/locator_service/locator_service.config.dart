// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../business_logic/controllers/fibonacci_controller.dart' as _i4;
import '../../business_logic/controllers/i_fibonacci_controller.dart' as _i3;
import '../../business_logic/cubits/fibonacci_cubit.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.IFibonacciController>(() => _i4.FibonacciController());
  gh.factory<_i5.FibonacciCubit>(
      () => _i5.FibonacciCubit(get<_i3.IFibonacciController>()));
  return get;
}
