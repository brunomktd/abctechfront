import 'package:abctechfront/domain/core/failure/failures.dart';
import 'package:abctechfront/domain/operator/entity/operator.dart';
import 'package:abctechfront/domain/operator/interface/i_operator_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IOperatorFacade)
class OperatorFacade implements IOperatorFacade {
  final Dio _http;

  const OperatorFacade(this._http);

  @override
  Future<Either<Failure, List<Operator>>> fetchAll() async {
    try {
      final response = await _http.get<List>(
        '/operators',
      );

      final operators =
          response.data!.map((o) => Operator.fromJson(o as Map<String, dynamic>)).toList();

      return right(operators);
    } catch (e) {
      return left(Failure.serverError());
    }
  }
}
