import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

Future<void> main() async {
  final BaseRepository baseRepository = BaseRepository();

  final AirlinesRepository airlinesRepository = AirlinesRepository(
    repository: baseRepository,
  );
  final PassengerRepository passengerRepository = PassengerRepository(
    repository: baseRepository,
  );

  final String? airlines = await airlinesRepository.getAirlinesId(id: 1);
  final String? passenger = await passengerRepository.getPassengerId(id: 1);

  print('\nAirlines data: $airlines');
  print('\nPassenger data: $passenger');
}

class BaseRepository {
  BaseRepository() {
    api = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        validateStatus: (_) => true,
      ),
    );

    api.interceptors.addAll([
      PrettyDioLogger(
        requestBody: true,
      ),
    ]);
  }

  static const String baseUrl = 'https://api.instantwebtools.net/v1';

  late final Dio api;
}

class AirlinesRepository {
  AirlinesRepository({
    required this.repository,
  }) : _api = repository.api;

  final BaseRepository repository;
  final Dio _api;

  Future<String?> getAirlinesId({
    required int id,
  }) async {
    final Response response = await _api.get(
      '/airlines/$id',
    );

    if (response.statusCode == 200) {
      return jsonEncode(response.data);
    }

    return null;
  }
}

class PassengerRepository {
  PassengerRepository({
    required this.repository,
  }) : _api = repository.api;

  final BaseRepository repository;
  final Dio _api;

  Future<String?> getPassengerId({
    required int id,
  }) async {
    final Response response = await _api.get(
      '/passenger/$id',
    );

    if (response.statusCode == 200) {
      return jsonEncode(response.data);
    }

    return null;
  }
}
