import 'package:freezed_annotation/freezed_annotation.dart';

part 'yandex_gpt_response.freezed.dart';
part 'yandex_gpt_response.g.dart';

@freezed
class YandexGPTResponse with _$YandexGPTResponse {
  const factory YandexGPTResponse({
    required YandexGPTResult result,
  }) = _YandexGPTResponse;

  factory YandexGPTResponse.fromJson(Map<String, dynamic> json) =>
      _$YandexGPTResponseFromJson(json);
}

@freezed
class YandexGPTResult with _$YandexGPTResult {
  const factory YandexGPTResult({
    required Iterable<YandexGPTAlternative> alternatives,
    required YandexGPTUsage usage,
    required String modelVersion,
  }) = _YandexGPTResult;

  factory YandexGPTResult.fromJson(Map<String, dynamic> json) =>
      _$YandexGPTResultFromJson(json);
}

@freezed
class YandexGPTAlternative with _$YandexGPTAlternative {
  const factory YandexGPTAlternative({
    required YandexGPTMessage message,
    required String status,
  }) = _YandexGPTAlternative;

  factory YandexGPTAlternative.fromJson(Map<String, dynamic> json) =>
      _$YandexGPTAlternativeFromJson(json);
}

@freezed
class YandexGPTMessage with _$YandexGPTMessage {
  const factory YandexGPTMessage({
    required String role,
    required String text,
  }) = _YandexGPTMessage;

  factory YandexGPTMessage.fromJson(Map<String, dynamic> json) =>
      _$YandexGPTMessageFromJson(json);
}

@freezed
class YandexGPTUsage with _$YandexGPTUsage {
  const factory YandexGPTUsage({
    required String inputTextTokens,
    required String completionTokens,
    required String totalTokens,
  }) = _YandexGPTUsage;

  factory YandexGPTUsage.fromJson(Map<String, dynamic> json) =>
      _$YandexGPTUsageFromJson(json);
}
