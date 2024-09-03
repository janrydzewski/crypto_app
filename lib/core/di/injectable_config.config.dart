// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:crypto_app/core/network/dio_factory.dart' as _i4;
import 'package:crypto_app/features/home_features/crypto_details/data/datasources/details_datasource.dart'
    as _i718;
import 'package:crypto_app/features/home_features/crypto_details/domain/repositories/details_repository.dart'
    as _i641;
import 'package:crypto_app/features/home_features/crypto_details/domain/usecases/get_crypto_details_usecase.dart'
    as _i454;
import 'package:crypto_app/features/home_features/crypto_details/domain/usecases/get_crypto_prices_usecase.dart'
    as _i410;
import 'package:crypto_app/features/home_features/crypto_list/data/datasources/crypto_list_datasource.dart'
    as _i1019;
import 'package:crypto_app/features/home_features/crypto_list/domain/repositories/list_repository.dart'
    as _i1054;
import 'package:crypto_app/features/home_features/crypto_list/domain/usecases/get_crypto_list_usecase.dart'
    as _i400;
import 'package:crypto_app/features/home_features/crypto_list/domain/usecases/get_trending_crypto_list_usecase.dart'
    as _i435;
import 'package:crypto_app/features/home_features/home/presentation/bloc/user_balance/cubit/user_balance_cubit.dart'
    as _i315;
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
    gh.singleton<_i315.UserBalanceCubit>(() => _i315.UserBalanceCubit());
    gh.lazySingleton<_i4.DioFactory>(() => _i4.DioFactoryImpl());
    gh.lazySingleton<_i718.DetailsDatasource>(
        () => _i718.DetailsDatasourceImpl(dioFactory: gh<_i4.DioFactory>()));
    gh.lazySingleton<_i1019.CryptoListDatasource>(() =>
        _i1019.CryptoListDatasourceImpl(dioFactory: gh<_i4.DioFactory>()));
    gh.lazySingleton<_i641.DetailsRepository>(() => _i641.DetailsRepositoryImpl(
        detailsDatasource: gh<_i718.DetailsDatasource>()));
    gh.lazySingleton<_i410.GetCryptoPricesUsecase>(() =>
        _i410.GetCryptoPricesUsecase(
            detailsRepository: gh<_i641.DetailsRepository>()));
    gh.lazySingleton<_i454.GetCryptoDetailsUsecase>(() =>
        _i454.GetCryptoDetailsUsecase(
            detailsRepository: gh<_i641.DetailsRepository>()));
    gh.lazySingleton<_i1054.CryptoListRepository>(() =>
        _i1054.CryptoListRepositoryImpl(
            cryptoListDatasource: gh<_i1019.CryptoListDatasource>()));
    gh.lazySingleton<_i435.GetTrendingCryptoListUsecase>(() =>
        _i435.GetTrendingCryptoListUsecase(
            trendingListRepository: gh<_i1054.CryptoListRepository>()));
    gh.lazySingleton<_i400.GetCryptoListUsecase>(() =>
        _i400.GetCryptoListUsecase(
            cryptoListRepository: gh<_i1054.CryptoListRepository>()));
    return this;
  }
}
