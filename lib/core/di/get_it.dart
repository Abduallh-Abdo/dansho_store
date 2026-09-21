import 'package:dansho_store/core/app/cubit/app_cubit.dart';
import 'package:dansho_store/core/service/graphql/api_service.dart';
import 'package:dansho_store/core/service/graphql/dio_factory.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

Future<void> initGetIt() async {
  final dio = DioFactory.getDio();
  sl.registerFactory(AppCubit.new);
  sl.registerLazySingleton<ApiService>(() => ApiService(dio));
}
