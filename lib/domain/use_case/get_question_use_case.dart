import '../api/questions_repository.dart';
import '../model/model.dart';

class GetQuestionUseCase {
  final QuestionsRepository _questionsRepository;

  const GetQuestionUseCase({required QuestionsRepository questionsRepository})
      : _questionsRepository = questionsRepository;

  /// Отдает историю вопросов
  Future<QuestionsHistory> getQuestionsHistory() async {
    return _questionsRepository.getQuestionsHistory();
  }

  /// Получить текущие характеристики вопроса
  Future<QuestionCharacteristics> getCurrentCharacteristics() async {
    return _questionsRepository.getCurrentCharacteristics();
  }

  /// Получить новый вопрос
  /// Можно указать характеристики, по которым будет собран вопрос
  Future<Question> getQuestion({
    QuestionCharacteristics? characteristics,
  }) async {
    return _questionsRepository.getQuestion(characteristics: characteristics);
  }

  Future<void> saveCharacteristics({
    QuestionCharacteristics? characteristics,
  }) async {
    return _questionsRepository.saveCharacteristics(
      characteristics: characteristics,
    );
  }
}
