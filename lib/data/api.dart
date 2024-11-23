import 'package:dio/dio.dart';
import 'package:truth_or_action_ai/data/model/yandex_gpt_response.dart';
import 'package:truth_or_action_ai/domain/model/model.dart';

class YandexGPTApi {
  static const _serviceUrl = 'https://llm.api.cloud.yandex.net/';
  static const _textGenerationPath = 'foundationModels/v1/completion';
  static const _apiKey = String.fromEnvironment('GPT_API_TOKEN');
  final Dio _dio;

  YandexGPTApi()
      : _dio = Dio(
          BaseOptions(
            headers: {
              'Authorization': 'Api-Key $_apiKey',
            },
          ),
        );

  Future<Question> getQuestion({
    required QuestionCharacteristics characteristics,
  }) async {
    final words = characteristics.characteristics.map((c) => c.word).join(',');
    final prompt = '${characteristics.prompt} $words';
    final dataFuture = await _dio.post(
      '$_serviceUrl$_textGenerationPath',
      data: {
        "modelUri": "gpt://b1g9lhl8e7i84a09fjrf/yandexgpt/rc",
        "completionOptions": {
          "stream": false,
          "temperature": 1.0,
          "maxTokens": 50
        },
        "messages": [
          {
            "role": "user",
            "text": "$prompt",
          }
        ]
      },
    );
    final data = dataFuture.data;
    final response = YandexGPTResponse.fromJson(data);

    return Question(
      text: response.result.alternatives.first.message.text,
      characteristics: characteristics,
    );
  }
}
