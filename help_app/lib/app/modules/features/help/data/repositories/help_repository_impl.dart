import 'package:dartz/dartz.dart';
import 'package:help_app/app/modules/features/help/data/datasources/help_datasource.dart';
import 'package:help_app/app/modules/features/help/domain/repositories/help_repository.dart';

class HelpRepositoryImpl implements HelpRepository {
  HelpRepositoryImpl(this._datasource);

  final HelpDatasource _datasource;

  @override
  Future<Either<Exception, String>> getStringFrom() async {
    //TODO: temos várias formas de tratar isso, mas uma delas é assim

    try {
      return Future<Either<Exception, String>>.value(
          Right<Exception, String>(await _datasource.getTesteString()));
    } on Exception catch (_) {
      return Future<Either<Exception, String>>.value(
          Left<Exception, String>(Exception('error')));
    }
  }
}
