import 'api.dart';
import '../domain/domain.dart';

final class Repository implements QuestionsRepository {
  final YandexGPTApi _yandexGPTApi;
  QuestionCharacteristics _characteristics =
      QuestionCharacteristics.defaultValue;

  final _history = <Question>[];

  Repository({
    required YandexGPTApi yandexGPTApi,
  }) : _yandexGPTApi = yandexGPTApi;

  @override
  Future<QuestionCharacteristics> getCurrentCharacteristics() async =>
      _characteristics;

  @override
  Future<Question> getQuestion({
    QuestionCharacteristics? characteristics,
  }) async {
    final result = await _yandexGPTApi.getQuestion(
      characteristics: characteristics ?? _characteristics,
      history: await getQuestionsHistory(),
    );
    _history.add(result);
    return result;
  }

  @override
  Future<QuestionsHistory> getQuestionsHistory() async {
    return QuestionsHistory(
      questions: _history,
    );
  }

  @override
  Future<void> saveCharacteristics({
    QuestionCharacteristics? characteristics,
  }) async {
    _characteristics = characteristics ?? QuestionCharacteristics.defaultValue;
  }
}
