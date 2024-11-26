import 'package:flutter/material.dart';
import 'data/api.dart';
import 'data/repository.dart';
import 'domain/domain.dart';
import 'ui/ui.dart';

import 'domain/notifier/value_notifier.dart';

void main() {
  final yandexGPTApi = YandexGPTApi();
  final repository = Repository(yandexGPTApi: yandexGPTApi);
  final questionCharacteristicsValueNotifier =
      QuestionCharacteristicsValueNotifier();
  final questionValueNotifier = QuestionValueNotifier();
  final useCase = GetQuestionUseCase(
    questionsRepository: repository,
    questionValueNotifier: questionValueNotifier,
    questionCharacteristicsValueNotifier: questionCharacteristicsValueNotifier,
  );

  runApp(MyApp(
    useCase: useCase,
    valueNotifier: questionCharacteristicsValueNotifier,
    questionValueNotifier: questionValueNotifier,
  ));
}

class MyApp extends StatelessWidget {
  final GetQuestionUseCase useCase;
  final QuestionCharacteristicsValueNotifier valueNotifier;
  final QuestionValueNotifier questionValueNotifier;

  const MyApp({
    super.key,
    required this.useCase,
    required this.valueNotifier,
    required this.questionValueNotifier,
  });

  @override
  Widget build(BuildContext context) {
    return AppDi(
      getQuestionUseCase: useCase,
      questionCharacteristicsValueNotifier: valueNotifier,
      questionValueNotifier: questionValueNotifier,
      child: MaterialApp(
        title: 'Узнай друга',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(
          title: 'Узнай друга',
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const HistoryPage()),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CurrentQuestionBuilder(
              builder: (BuildContext context, Question question) => Expanded(
                child: Center(
                  child: Text(
                    question.text,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),
              nullBuilder: (BuildContext context) => Expanded(
                child: Center(
                  child: Text(
                    'Нажми на кнопку',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),
            ),
            const SettingsButton(),
            const GetQuestionButton(),
          ],
        ),
      ),
    );
  }
}

class AppDi extends InheritedWidget {
  final GetQuestionUseCase getQuestionUseCase;
  final QuestionCharacteristicsValueNotifier
      questionCharacteristicsValueNotifier;
  final QuestionValueNotifier questionValueNotifier;

  const AppDi({
    super.key,
    required super.child,
    required this.getQuestionUseCase,
    required this.questionCharacteristicsValueNotifier,
    required this.questionValueNotifier,
  });

  @override
  bool updateShouldNotify(covariant AppDi oldWidget) =>
      oldWidget.getQuestionUseCase != getQuestionUseCase ||
      questionCharacteristicsValueNotifier !=
          oldWidget.questionCharacteristicsValueNotifier;

  static AppDi of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<AppDi>()!;
}
