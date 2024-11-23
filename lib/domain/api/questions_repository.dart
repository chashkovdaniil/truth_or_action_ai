import 'package:truth_or_action_ai/domain/model/model.dart';

abstract interface class QuestionsRepository {
  Future<QuestionsHistory> getQuestionsHistory();

  Future<QuestionCharacteristics> getCurrentCharacteristics();

  Future<Question> getQuestion({QuestionCharacteristics? characteristics});

  Future<void> saveCharacteristics({
    QuestionCharacteristics? characteristics,
  });
}
