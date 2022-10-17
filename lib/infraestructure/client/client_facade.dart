import 'package:abctechfront/domain/client/entity/client.dart';
import 'package:abctechfront/domain/client/interface/i_client_facade.dart';
import 'package:abctechfront/domain/core/failure/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IClientFacade)
class ClientFacade implements IClientFacade {
  final Dio _http;

  const ClientFacade(this._http);

  @override
  Future<Either<Failure, List<Client>>> fetchAll() async {
    try {
      final response = await _http.get<List>(
        '/clients',
      );

      final clients =
          response.data!.map((o) => Client.fromJson(o as Map<String, dynamic>)).toList();

      return right(clients);
    } catch (e) {
      return left(Failure.serverError());
    }
  }
}
