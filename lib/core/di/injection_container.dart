import 'package:get_it/get_it.dart';
import 'package:store/core/app/app_cubit/app_cubit.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initcore();
}

Future<void> _initcore() async{
   sl.registerFactory(AppCubit.new);
}