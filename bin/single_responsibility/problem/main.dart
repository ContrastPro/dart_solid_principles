import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

Future<void> main() async {
  final Repository repository = Repository();
  final String? airlines = await repository.getAirlinesId(id: 1);
  final String? passenger = await repository.getPassengerId(id: 1);

  print('\nAirlines data: $airlines');
  print('\nPassenger data: $passenger');
}

class Repository {
  Repository() {
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

  Future<String?> getAirlinesId({
    required int id,
  }) async {
    final Response response = await api.get(
      '/airlines/$id',
    );

    if (response.statusCode == 200) {
      return jsonEncode(response.data);
    }

    return null;
  }

  Future<String?> getPassengerId({
    required int id,
  }) async {
    final Response response = await api.get(
      '/passenger/$id',
    );

    if (response.statusCode == 200) {
      return jsonEncode(response.data);
    }

    return null;
  }
}
