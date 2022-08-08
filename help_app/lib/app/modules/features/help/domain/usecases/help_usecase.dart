import 'package:base_dependencies/main.dart';
import 'package:help_app/app/modules/features/help/domain/repositories/help_repository.dart';

abstract class HelpUsecase {
  Future<Either<Exception, String>> call();
}

class HelpUsecaseImpl implements HelpUsecase {
  HelpUsecaseImpl(this._repository);

  final HelpRepository _repository;

  @override
  Future<Either<Exception, String>> call() {
    return _repository.getStringFrom();
  }
}
