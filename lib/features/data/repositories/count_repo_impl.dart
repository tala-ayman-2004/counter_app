
import 'package:counter_app/features/domain/repositories/counter_repo.dart';

class CounterRepositoryImpl implements CounterRepository {
  @override
 int increment(int value) {
    return value + 1;
  }

  @override
  int decrement(int value) {
    return value - 1;
  }

  @override
  int reset() {
    return 0;
  }
}