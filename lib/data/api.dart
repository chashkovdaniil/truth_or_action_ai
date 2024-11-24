import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:truth_or_action_ai/data/model/yandex_gpt_response.dart';
import 'package:truth_or_action_ai/domain/model/model.dart';

class YandexGPTApi {
  static const _serviceUrl = 'https://functions.yandexcloud.net/';
  static const _functionId = String.fromEnvironment('FUNCTION_ID');
  static const _apiKey = String.fromEnvironment('GPT_API_TOKEN');
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
        HttpHeaders.contentTypeHeader: 'text/plain',
      }),
      data: jsonEncode({
        "modelUri": "gpt://b1g9lhl8e7i84a09fjrf/yandexgpt/rc",
        "completionOptions": {
          "stream": false,
          "temperature": 1.0,
          "maxTokens": 50
        },
        "messages": [
          {
            "role": "user",
            "text": prompt,
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
