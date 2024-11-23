import 'package:freezed_annotation/freezed_annotation.dart';

import 'model.dart';

part 'questions_history.freezed.dart';
part 'questions_history.g.dart';

@freezed
class QuestionsHistory with _$QuestionsHistory {
  const factory QuestionsHistory({
    required Iterable<Question> questions,
  }) = _QuestionsHistory;

  factory QuestionsHistory.fromJson(Map<String, dynamic> json) =>
      _$QuestionsHistoryFromJson(json);
}
