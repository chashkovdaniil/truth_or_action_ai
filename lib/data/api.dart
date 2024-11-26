import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'model/yandex_gpt_response.dart';
import '../domain/model/model.dart';

class YandexGPTApi {
  /// Так как яндекс gpt, не поддерживает обращение с сайтов напрямую по ссылке,
  /// то необходимос создать функцию в облаке, которая будет обращаться к гпт и отдавать ответ
  static const _serviceUrl = 'https://functions.yandexcloud.net/';

  /// Идентификатор функции, которую вызываем
  ///
  /// Можно использовать для обращения идентификатор - d4ei6h68cn40v8uco5qu
  /// Она публичная
  static const _functionId = String.fromEnvironment('FUNCTION_ID');

  /// Идентификатор модели, которую вызываем
  static const _modelURI = String.fromEnvironment('MODEL_URI');

  /// Api ключ, который мы передаем для авторизации
  /// В данном случае не пришлось использовать так как функция публичная
  // static const _apiKey = String.fromEnvironment('GPT_API_TOKEN');

  static const _contentTypeHeaderValue = 'text/plain';

  final Dio _dio;

  YandexGPTApi() : _dio = Dio();

  Future<Question> getQuestion({
    required QuestionCharacteristics characteristics,
    required QuestionsHistory? history,
  }) async {
    var historyPrompt = '';
    if (history != null) {
      historyPrompt = 'Но не задавай следующие вопросы: '
          '${history.questions.map((q) => '"${q.text}"').join(', ')}';
    }

    final words = characteristics.characteristics.map((c) => c.word).join(',');
    final prompt = '${characteristics.prompt}. $words. $historyPrompt.';

    final dataFuture = await _dio.post(
      '$_serviceUrl$_functionId',
      options: Options(headers: {
        HttpHeaders.contentTypeHeader: _contentTypeHeaderValue,
        // HttpHeaders.authorizationHeader: 'Api-Key $_apiKey',
      }),
      data: jsonEncode({
        'modelUri': 'gpt://$_modelURI',
        'completionOptions': {
          'stream': false,
          'temperature': 1.0,
          'maxTokens': 50
        },
        'messages': [
          {
            'role': 'user',
            'text': prompt,
          }
        ]
      }),
    );
    final data = jsonDecode(dataFuture.data);
    final response = YandexGPTResponse.fromJson(data);

    return Question(
      text: response.result.alternatives.first.message.text,
      characteristics: characteristics,
    );
  }
}
