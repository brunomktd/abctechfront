import 'package:abctechfront/domain/core/failure/failures.dart';
import 'package:abctechfront/domain/operator/entity/operator.dart';
import 'package:dartz/dartz.dart';

abstract class IOperatorFacade {
  Future<Either<Failure, List<Operator>>> fetchAll();
}
