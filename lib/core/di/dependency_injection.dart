import 'package:get_it/get_it.dart';
import 'package:tride/core/api/api_manager.dart';
import 'package:tride/core/api/dio_factory.dart';
import 'package:tride/features/onboarding/presentation/manager/on_boarding_cubit.dart';
import 'package:tride/features/translation/cubit/localization_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio Client
  getIt.registerLazySingleton<ApiManager>(
    () => ApiManager(dio: DioFactory.getDio()),
  );

  //   // Data Sources
  //   getIt.registerLazySingleton<RegisterRemoteDataSourceImpl>(
  //     () => RegisterRemoteDataSourceImpl(getIt<ApiManager>()),
  //   );
  //   getIt.registerLazySingleton<LoginRemoteDataSourceImpl>(
  //     () => LoginRemoteDataSourceImpl(getIt<ApiManager>()),
  //   );
  //   getIt.registerLazySingleton<ProductsRemoteDataSourceImpl>(
  //     () => ProductsRemoteDataSourceImpl(getIt<ApiManager>()),
  //   );
  //   getIt.registerLazySingleton<AdsRemoteDataSourceImpl>(
  //     () => AdsRemoteDataSourceImpl(getIt<ApiManager>()),
  //   );
  //   getIt.registerLazySingleton<GetCompaniesRemoteDataSourceImpl>(
  //     () => GetCompaniesRemoteDataSourceImpl(getIt<ApiManager>()),
  //   );
  //   getIt.registerLazySingleton<GetCompanyServicesRemoteDataSourceImpl>(
  //     () => GetCompanyServicesRemoteDataSourceImpl(getIt<ApiManager>()),
  //   );

  //   // Repositories
  //   getIt.registerLazySingleton<RegisterRepositoryImpl>(
  //     () => RegisterRepositoryImpl(getIt<RegisterRemoteDataSourceImpl>()),
  //   );
  //   getIt.registerLazySingleton<LoginRepositoryImpl>(
  //     () => LoginRepositoryImpl(getIt<LoginRemoteDataSourceImpl>()),
  //   );

  //   getIt.registerLazySingleton<HomeRepositoryImpl>(
  //     () => HomeRepositoryImpl(
  //       adsRemoteDataSource: getIt<AdsRemoteDataSourceImpl>(),
  //       productsRemoteDataSource: getIt<ProductsRemoteDataSourceImpl>(),
  //     ),
  //   );
  //   getIt.registerLazySingleton<ServicesRepositoryImplementation>(
  //     () => ServicesRepositoryImplementation(
  //       getCompaniesRemoteDataSource: getIt<GetCompaniesRemoteDataSourceImpl>(),
  //       getCompanyServicesRemoteDataSource:
  //           getIt<GetCompanyServicesRemoteDataSourceImpl>(),
  //     ),
  //   );

  //   // Use Cases
  //   getIt.registerLazySingleton<SignupUseCaseImpl>(
  //     () => SignupUseCaseImpl(getIt<RegisterRepositoryImpl>()),
  //   );
  //   getIt.registerLazySingleton<LoginUseCaseImpl>(
  //     () => LoginUseCaseImpl(getIt<LoginRepositoryImpl>()),
  //   );
  //   getIt.registerLazySingleton<GetProductsUsecaseImpl>(
  //     () => GetProductsUsecaseImpl(
  //       homeRepository: getIt<HomeRepositoryImpl>(),
  //     ),
  //   );
  //   getIt.registerLazySingleton<GetAdsUseCaseImpl>(
  //     () => GetAdsUseCaseImpl(homeRepository: getIt<HomeRepositoryImpl>()),
  //   );
  //   getIt.registerLazySingleton<GetCompaniesUsecaseImpl>(
  //     () => GetCompaniesUsecaseImpl(
  //         servicesRepository: getIt<ServicesRepositoryImplementation>()),
  //   );
  //   getIt.registerLazySingleton<GetCompanyServicesByIdUsecaseImpl>(
  //     () => GetCompanyServicesByIdUsecaseImpl(
  //         servicesRepository: getIt<ServicesRepositoryImplementation>()),
  //   );

  //   // Cubits
  //   getIt.registerFactory<SignupCubit>(
  //       () => SignupCubit(getIt<SignupUseCaseImpl>()));
  //   getIt.registerFactory(() => LoginCubit(getIt<LoginUseCaseImpl>()));
  //   getIt.registerFactory<ProductsCubit>(
  //     () => ProductsCubit(getIt<GetProductsUsecaseImpl>()),
  //   );
  //   getIt.registerFactory<AdsCubit>(
  //     () => AdsCubit(getAdsUseCase: getIt<GetAdsUseCaseImpl>()),
  //   );
  getIt.registerFactory<LocaleCubit>(() => LocaleCubit());
  getIt.registerFactory<OnBoardingCubit>(() => OnBoardingCubit());

  //   getIt.registerFactory<CompaniesCubit>(
  //     () => CompaniesCubit(getIt<GetCompaniesUsecaseImpl>()),
  //   );
  //   getIt.registerFactory<CompanyServicesCubit>(
  //     () => CompanyServicesCubit(getIt<GetCompanyServicesByIdUsecaseImpl>()),
  //   );
}
