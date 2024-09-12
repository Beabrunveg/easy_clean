import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:taks_daily_app/src/models/models.dart';
import 'package:taks_daily_app/src/repositories/database_repository.dart';

@lazySingleton
class UpdateUser {
  UpdateUser(this.repository);
  final DatabaseRepository repository;

  Future<Either<Exception, void>> execute(User user) {
    return repository.updateUser(user);
  }
}
