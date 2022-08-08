import 'package:base_dependencies/main.dart';

abstract class HelpRepository {
  Future<Either<Exception, String>> getStringFrom();
}
