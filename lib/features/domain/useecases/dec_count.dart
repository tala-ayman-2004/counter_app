
import 'package:counter_app/features/domain/repositories/counter_repo.dart';

class DecrementCounter {
  final CounterRepository repository;

  DecrementCounter(this.repository);

  int call(int value) {
    return repository.decrement(value);
  }
}