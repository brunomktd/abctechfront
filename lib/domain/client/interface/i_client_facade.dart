import 'package:abctechfront/domain/client/entity/client.dart';
import 'package:abctechfront/domain/core/failure/failures.dart';
import 'package:dartz/dartz.dart';

abstract class IClientFacade {
  Future<Either<Failure, List<Client>>> fetchAll();
}
