import 'package:abctechfront/domain/assistance/entity/assistance_combo.dart';
import 'package:abctechfront/domain/assistance/interface/i_assistance_facade.dart';
import 'package:abctechfront/domain/core/failure/failures.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAssistanceFacade)
class AssistanceFacade implements IAssistanceFacade {
  final Dio _http;

  const AssistanceFacade(this._http);

  @override
  Future<Either<Failure, List<AssistanceCombo>>> fetchCombo() async {
    try {
      final response = await _http.get<List>(
        '/assistances',
      );

      final assistances =
          response.data!.map((o) => AssistanceCombo.fromJson(o as Map<String, dynamic>)).toList();

      return right(assistances);
    } catch (e) {
      return left(Failure.serverError());
    }
  }
}
