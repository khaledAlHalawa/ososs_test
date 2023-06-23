// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../../features/home/presentation/manager/home_cubit.dart' as _i4;
import '../../features/pok%C3%A9mon/data/data_sources/pokemon_datasource.dart'
    as _i7;
import '../../features/pok%C3%A9mon/data/repositories/pokemons_repository_impl.dart'
    as _i9;
import '../../features/pok%C3%A9mon/domain/repositories/pokemons_repository.dart'
    as _i8;
import '../../features/pok%C3%A9mon/domain/use_cases/get_pokemons_usecase.dart'
    as _i12;
import '../../features/pok%C3%A9mon/presentation/manager/pokemons_bloc.dart'
    as _i13;
import '../storage/prefs_repository.dart' as _i10;
import '../storage/prefs_repository_impl.dart' as _i11;
import 'di_container.dart' as _i14;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.factory<_i3.BaseOptions>(() => appModule.dioOption);
  gh.factory<_i4.HomeCubit>(() => _i4.HomeCubit());
  gh.singleton<_i5.Logger>(appModule.logger);
  await gh.singletonAsync<_i6.SharedPreferences>(
    () => appModule.sharedPreferences,
    preResolve: true,
  );
  gh.lazySingleton<_i3.Dio>(() => appModule.dio(
        gh<_i3.BaseOptions>(),
        gh<_i5.Logger>(),
      ));
  gh.factory<_i7.PokemonDatasource>(() => _i7.PokemonDatasource(gh<_i3.Dio>()));
  gh.factory<_i8.PokemonRepository>(
      () => _i9.PokemonsRepositoryImpl(gh<_i7.PokemonDatasource>()));
  gh.factory<_i10.PrefsRepository>(
      () => _i11.PrefsRepositoryImpl(gh<_i6.SharedPreferences>()));
  gh.factory<_i12.GetPokemonsUsecase>(
      () => _i12.GetPokemonsUsecase(gh<_i8.PokemonRepository>()));
  gh.factory<_i13.PokemonsBloc>(
      () => _i13.PokemonsBloc(gh<_i12.GetPokemonsUsecase>()));
  return getIt;
}

class _$AppModule extends _i14.AppModule {}
