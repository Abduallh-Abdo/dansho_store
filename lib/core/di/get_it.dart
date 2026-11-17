import 'package:dansho_store/core/app/cubit/app_cubit.dart';
import 'package:dansho_store/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:dansho_store/core/app/upload_image/data_source/upload_image_data_source.dart';
import 'package:dansho_store/core/app/upload_image/repos/upload_image_repo.dart';
import 'package:dansho_store/core/service/graphql/api_service.dart';
import 'package:dansho_store/core/service/graphql/dio_factory.dart';
import 'package:dansho_store/features/admin/add_categories/data/data_source/category_data_soucre.dart';
import 'package:dansho_store/features/admin/add_categories/data/repo/categories_admin_repo.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/bloc/create_category/create_category_bloc.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/bloc/delete_category/delete_category_bloc.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/bloc/get_all_admin_category/get_all_admin_category_bloc.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/bloc/update_category/update_category_bloc.dart';
import 'package:dansho_store/features/admin/add_products/data/data_source/product_data_soucre.dart';
import 'package:dansho_store/features/admin/add_products/data/repo/product_admin_repo.dart';
import 'package:dansho_store/features/admin/add_products/presentation/bloc/get_all_admin_products/get_all_admin_products_bloc.dart';
import 'package:dansho_store/features/admin/dashboard/data/data_source/dashboard_data_source.dart';
import 'package:dansho_store/features/admin/dashboard/data/repos/dashboard_repo.dart';
import 'package:dansho_store/features/admin/dashboard/presentation/bloc/categories_number/categories_number_bloc.dart';
import 'package:dansho_store/features/admin/dashboard/presentation/bloc/products_number/products_number_bloc.dart';
import 'package:dansho_store/features/admin/dashboard/presentation/bloc/users_number/users_number_bloc.dart';
import 'package:dansho_store/features/auth/data/data_source/auth_data_source.dart';
import 'package:dansho_store/features/auth/data/repos/auth_repo.dart';
import 'package:dansho_store/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

Future<void> initGetIt() async {
  _intCore();
  _initAuth();
  _initDashboard();
  _initCategoriesAdmin();
  _initProductAdmin();
}

void _initCategoriesAdmin() {
  sl.registerLazySingleton<CategoryDataSoucre>(
    () => CategoryDataSoucre(apiService: sl()),
  );
  sl.registerLazySingleton<CategoriesAdminRepo>(
    () => CategoriesAdminRepo(dataSource: sl()),
  );
  sl.registerFactory<GetAllAdminCategoryBloc>(
    () => GetAllAdminCategoryBloc(categoryAdminRepo: sl()),
  );
  sl.registerFactory<CreateCategoryBloc>(
    () => CreateCategoryBloc(categoryAdminRepo: sl()),
  );
  sl.registerFactory<DeleteCategoryBloc>(
    () => DeleteCategoryBloc(categoryAdminRepo: sl()),
  );
  sl.registerFactory<UpdateCategoryBloc>(
    () => UpdateCategoryBloc(categoriesAdminRepo: sl()),
  );
}

void _initProductAdmin() {
  sl.registerLazySingleton<ProductDataSoucre>(
    () => ProductDataSoucre(apiService: sl()),
  );
  sl.registerLazySingleton<ProductAdminRepo>(
    () => ProductAdminRepo(dataSource: sl()),
  );
  sl.registerFactory<GetAllAdminProductsBloc>(
    () => GetAllAdminProductsBloc(productAdminRepo: sl()),
  );
}

void _initDashboard() {
  sl.registerLazySingleton<DashboardDataSource>(
    () => DashboardDataSource(apiService: sl()),
  );
  sl.registerLazySingleton<DashboardRepo>(
    () => DashboardRepo(dataSource: sl()),
  );
  sl.registerFactory<ProductsNumberBloc>(
    () => ProductsNumberBloc(dashboardRepo: sl()),
  );
  sl.registerFactory<CategoriesNumberBloc>(
    () => CategoriesNumberBloc(dashboardRepo: sl()),
  );
  sl.registerFactory<UsersNumberBloc>(
    () => UsersNumberBloc(dashboardRepo: sl()),
  );
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
