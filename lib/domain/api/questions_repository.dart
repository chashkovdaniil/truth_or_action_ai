import '../model/model.dart';

abstract interface class QuestionsRepository {
  Future<QuestionsHistory> getQuestionsHistory();

  Future<QuestionCharacteristics> getCurrentCharacteristics();

  Future<Question> getQuestion({QuestionCharacteristics? characteristics});

  Future<void> saveCharacteristics({
    QuestionCharacteristics? characteristics,
  });
}
