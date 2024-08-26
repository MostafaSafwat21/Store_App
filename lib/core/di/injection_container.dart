import 'package:get_it/get_it.dart';
import 'package:store/core/app/app_cubit/app_cubit.dart';
import 'package:store/core/service/GraphQL/api_service.dart';
import 'package:store/core/service/GraphQL/dio_factory.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initcore();
}

Future<void> _initcore() async{
  final dio = DioFactory.getDio();
  
   sl.registerFactory(AppCubit.new);
   sl.registerLazySingleton(() => ApiService(dio));
}