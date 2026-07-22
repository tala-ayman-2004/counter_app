import 'package:counter_app/features/domain/repositories/counter_repo.dart';

class ResetCounter {
  final CounterRepository repository;

  ResetCounter(this.repository);

  int call() {
    return repository.reset();
  }
}