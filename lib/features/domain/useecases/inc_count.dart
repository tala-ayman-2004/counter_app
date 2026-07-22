

import 'package:counter_app/features/domain/repositories/counter_repo.dart';

class IncrementCounter {
  final CounterRepository repository;

  IncrementCounter(this.repository);

  int call(int value) {
    return repository.increment(value);
  }
}