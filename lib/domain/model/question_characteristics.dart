import 'package:freezed_annotation/freezed_annotation.dart';

import 'model.dart';

part 'question_characteristics.freezed.dart';
part 'question_characteristics.g.dart';

@freezed
class QuestionCharacteristics with _$QuestionCharacteristics {
  static const _prompt =
      'Игра "правда или действие". Придумай вопрос и в ответе укажи только его. Исключи из ответа название игры. Вопрос должен обладать такими характеристиками: ';

  const QuestionCharacteristics._();
  const factory QuestionCharacteristics({
    required Iterable<QuestionCharacteristic> characteristics,
  }) = _QuestionCharacteristics;

  factory QuestionCharacteristics.fromJson(Map<String, dynamic> json) =>
      _$QuestionCharacteristicsFromJson(json);

  static const defaultValue = QuestionCharacteristics(
    characteristics: [],
  );
  String get prompt => _prompt;
}
