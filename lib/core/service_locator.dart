import 'package:counter_app/features/data/repositories/count_repo_impl.dart';
import 'package:counter_app/features/domain/repositories/counter_repo.dart';
import 'package:counter_app/features/domain/useecases/dec_count.dart';
import 'package:counter_app/features/domain/useecases/inc_count.dart';
import 'package:counter_app/features/domain/useecases/reset_count.dart';
import 'package:counter_app/features/peresentation/cubit/counter_cubit.dart';
import 'package:get_it/get_it.dart';


final sl = GetIt.instance;

void setup() {
  sl.registerLazySingleton<CounterRepository>(
    () => CounterRepositoryImpl(),
  );

  sl.registerLazySingleton(
    () => IncrementCounter(sl()),
  );

  sl.registerLazySingleton(
    () => DecrementCounter(sl()),
  );

  sl.registerLazySingleton(
    () => ResetCounter(sl()),
  );

  sl.registerFactory(
  () => CounterCubit(
    sl(),
    sl(),
    sl(),
  ),
);
}