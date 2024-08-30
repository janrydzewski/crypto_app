// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:crypto_app/core/network/dio_factory.dart' as _i4;
import 'package:crypto_app/features/home_features/list/data/datasources/list_datasource.dart'
    as _i332;
import 'package:crypto_app/features/home_features/list/domain/repositories/list_repository.dart'
    as _i540;
import 'package:crypto_app/features/home_features/list/domain/usecases/get_crypto_list_usecase.dart'
    as _i1025;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i4.DioFactory>(() => _i4.DioFactoryImpl());
    gh.lazySingleton<_i332.ListDatasource>(
        () => _i332.ListDatasourceImpl(dioFactory: gh<_i4.DioFactory>()));
    gh.lazySingleton<_i540.ListRepository>(() =>
        _i540.ListRepositoryImpl(listDatasource: gh<_i332.ListDatasource>()));
    gh.lazySingleton<_i1025.GetCryptoListUsecase>(() =>
        _i1025.GetCryptoListUsecase(
            listRepository: gh<_i540.ListRepository>()));
    return this;
  }
}
