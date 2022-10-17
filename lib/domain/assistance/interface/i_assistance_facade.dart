import 'package:abctechfront/domain/assistance/entity/assistance_combo.dart';
import 'package:abctechfront/domain/core/failure/failures.dart';
import 'package:dartz/dartz.dart';

abstract class IAssistanceFacade {
  Future<Either<Failure, List<AssistanceCombo>>> fetchCombo();
}
