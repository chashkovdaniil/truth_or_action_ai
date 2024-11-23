// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_characteristics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionCharacteristicsImpl _$$QuestionCharacteristicsImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionCharacteristicsImpl(
      characteristics: (json['characteristics'] as List<dynamic>).map(
          (e) => QuestionCharacteristic.fromJson(e as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$QuestionCharacteristicsImplToJson(
        _$QuestionCharacteristicsImpl instance) =>
    <String, dynamic>{
      'characteristics': instance.characteristics.toList(),
    };
