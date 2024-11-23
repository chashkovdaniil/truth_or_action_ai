import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:truth_or_action_ai/domain/model/model.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question {
  const factory Question({
    required String text,
    required QuestionCharacteristics characteristics,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
