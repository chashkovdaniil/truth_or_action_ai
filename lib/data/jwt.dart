import 'dart:io';

import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:dio/dio.dart';

/// Используется для получения jwt токена.
/// В коде не пришлось использовать в итоге, но реализацию на всякий случай оставил
class AuthApi {
  final Dio _dio;

  AuthApi({
    required Dio dio,
  }) : _dio = dio;

  Future<String> getIAMToken() async {
    final jwtToken = _createJWT();

    final token = await _dio.post(
      'https://iam.api.cloud.yandex.net/iam/v1/tokens',
      data: {'jwt': jwtToken},
      options: Options(
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        },
        method: 'POST',
      ),
    );

    return token.data['iamToken'];
  }

  String _createJWT() {
    const openKeyId = String.fromEnvironment('OPEN_KEY_ID');
    const authCloseKey = String.fromEnvironment('AUTH_CLOSE_KEY');
    final jwtObject = JWT(
      {
        'iss': const String.fromEnvironment('SERVICE_ID'),
        'aud': 'https://iam.api.cloud.yandex.net/iam/v1/tokens',
        'iat': DateTime.now().millisecondsSinceEpoch,
        'exp': DateTime.now()
            .add(const Duration(minutes: 40))
            .millisecondsSinceEpoch,
      },
      header: {
        'typ': 'jwt',
        'alg': 'PS256',
        'kid': openKeyId,
      },
    );
    return jwtObject.sign(
      RSAPrivateKey(authCloseKey.replaceAll('\\n', '\u000A')),
      algorithm: JWTAlgorithm.PS256,
      expiresIn: const Duration(minutes: 40),
    );
  }
}
