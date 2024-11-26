import '../api/questions_repository.dart';
import '../model/model.dart';
import '../notifier/value_notifier.dart';

class GetQuestionUseCase {
  final QuestionsRepository _questionsRepository;
  final QuestionValueNotifier _questionValueNotifier;
  final QuestionCharacteristicsValueNotifier
      _questionCharacteristicsValueNotifier;

  const GetQuestionUseCase({
    required QuestionsRepository questionsRepository,
    required QuestionValueNotifier questionValueNotifier,
    required QuestionCharacteristicsValueNotifier
        questionCharacteristicsValueNotifier,
  })  : _questionsRepository = questionsRepository,
        _questionValueNotifier = questionValueNotifier,
        _questionCharacteristicsValueNotifier =
            questionCharacteristicsValueNotifier;

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
  Future<Question> getQuestion() async {
    final characteristics = _questionCharacteristicsValueNotifier.value;
    final question = await _questionsRepository.getQuestion(
      characteristics: characteristics,
    );

    _questionValueNotifier.value = question;

    return question;
  }

  Future<void> saveCharacteristics({
    QuestionCharacteristics? characteristics,
  }) async {
    return _questionsRepository.saveCharacteristics(
      characteristics: characteristics,
    );
  }
}
