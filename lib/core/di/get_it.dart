import 'package:dansho_store/core/app/cubit/app_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initGetIt() async {
  sl.registerFactory(AppCubit.new);
}
