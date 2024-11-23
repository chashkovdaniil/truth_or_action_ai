// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionsHistoryImpl _$$QuestionsHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionsHistoryImpl(
      questions: (json['questions'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$QuestionsHistoryImplToJson(
        _$QuestionsHistoryImpl instance) =>
    <String, dynamic>{
      'questions': instance.questions.toList(),
    };
