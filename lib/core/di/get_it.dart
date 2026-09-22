import 'package:dansho_store/core/app/cubit/app_cubit.dart';
import 'package:dansho_store/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:dansho_store/core/app/upload_image/data_source/upload_image_data_source.dart';
import 'package:dansho_store/core/app/upload_image/repos/upload_image_repo.dart';
import 'package:dansho_store/core/service/graphql/api_service.dart';
import 'package:dansho_store/core/service/graphql/dio_factory.dart';
import 'package:dansho_store/features/auth/data/data_source/auth_data_source.dart';
import 'package:dansho_store/features/auth/data/repos/auth_repo.dart';
import 'package:dansho_store/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

Future<void> initGetIt() async {
  _intCore();
  _initAuth();
}

void _intCore() {
  final dio = DioFactory.getDio();
  final navigatorKey = GlobalKey<NavigatorState>();

  sl.registerFactory(AppCubit.new);
  sl.registerLazySingleton<ApiService>(() => ApiService(dio));
  sl.registerFactory<GlobalKey<NavigatorState>>(() => navigatorKey);
  sl.registerFactory<UploadImageCubit>(
    () => UploadImageCubit(uploadImageRepo: sl()),
  );
  sl.registerLazySingleton<UploadImageRepo>(
    () => UploadImageRepo(uploadImageDataSource: sl()),
  );
  sl.registerLazySingleton<UploadImageDataSource>(
    () => UploadImageDataSource(apiService: sl()),
  );
}

void _initAuth() {
  sl.registerFactory<AuthBloc>(() => AuthBloc(authRepo: sl()));
  sl.registerLazySingleton<AuthRepo>(() => AuthRepo(authDataSource: sl()));
  sl.registerLazySingleton<AuthDataSource>(
    () => AuthDataSource(apiService: sl()),
  );
}
