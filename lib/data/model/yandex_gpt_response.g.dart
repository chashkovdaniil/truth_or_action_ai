// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yandex_gpt_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$YandexGPTResponseImpl _$$YandexGPTResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$YandexGPTResponseImpl(
      result: YandexGPTResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$YandexGPTResponseImplToJson(
        _$YandexGPTResponseImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

_$YandexGPTResultImpl _$$YandexGPTResultImplFromJson(
        Map<String, dynamic> json) =>
    _$YandexGPTResultImpl(
      alternatives: (json['alternatives'] as List<dynamic>)
          .map((e) => YandexGPTAlternative.fromJson(e as Map<String, dynamic>)),
      usage: YandexGPTUsage.fromJson(json['usage'] as Map<String, dynamic>),
      modelVersion: json['modelVersion'] as String,
    );

Map<String, dynamic> _$$YandexGPTResultImplToJson(
        _$YandexGPTResultImpl instance) =>
    <String, dynamic>{
      'alternatives': instance.alternatives.toList(),
      'usage': instance.usage,
      'modelVersion': instance.modelVersion,
    };

_$YandexGPTAlternativeImpl _$$YandexGPTAlternativeImplFromJson(
        Map<String, dynamic> json) =>
    _$YandexGPTAlternativeImpl(
      message:
          YandexGPTMessage.fromJson(json['message'] as Map<String, dynamic>),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$YandexGPTAlternativeImplToJson(
        _$YandexGPTAlternativeImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
    };

_$YandexGPTMessageImpl _$$YandexGPTMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$YandexGPTMessageImpl(
      role: json['role'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$YandexGPTMessageImplToJson(
        _$YandexGPTMessageImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'text': instance.text,
    };

_$YandexGPTUsageImpl _$$YandexGPTUsageImplFromJson(Map<String, dynamic> json) =>
    _$YandexGPTUsageImpl(
      inputTextTokens: json['inputTextTokens'] as String,
      completionTokens: json['completionTokens'] as String,
      totalTokens: json['totalTokens'] as String,
    );

Map<String, dynamic> _$$YandexGPTUsageImplToJson(
        _$YandexGPTUsageImpl instance) =>
    <String, dynamic>{
      'inputTextTokens': instance.inputTextTokens,
      'completionTokens': instance.completionTokens,
      'totalTokens': instance.totalTokens,
    };
