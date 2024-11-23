import 'package:flutter/material.dart';
import 'package:truth_or_action_ai/data/api.dart';
import 'package:truth_or_action_ai/data/repository.dart';
import 'package:truth_or_action_ai/domain/domain.dart';
import 'package:truth_or_action_ai/ui/history.dart';

import 'ui/settings.dart';

enum PageState {
  idle,
  loading,
}

void main() {
  final yandexGPTApi = YandexGPTApi();
  final repository = Repository(yandexGPTApi: yandexGPTApi);
  final useCase = GetQuestionUseCase(
    questionsRepository: repository,
  );
  final questionCharacteristicsValueNotifier =
      QuestionCharacteristicsValueNotifier();

  runApp(MyApp(
    useCase: useCase,
    valueNotifier: questionCharacteristicsValueNotifier,
  ));
}

class MyApp extends StatelessWidget {
  final GetQuestionUseCase useCase;
  final QuestionCharacteristicsValueNotifier valueNotifier;
  const MyApp({
    super.key,
    required this.useCase,
    required this.valueNotifier,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppDi(
      getQuestionUseCase: useCase,
      questionCharacteristicsValueNotifier: valueNotifier,
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

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _question = 'Нажми на кнопку';
  PageState state = PageState.idle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: () async {
              final history = await AppDi.of(context)
                  ?.getQuestionUseCase
                  .getQuestionsHistory();
              if (history == null) {
                return;
              }
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HistoryPage(
                    history: history,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Text(
                  _question,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Настройки'),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const SettingsPage()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FilledButton(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    child: state == PageState.idle
                        ? const _GetQuestionButtonText()
                        : const LinearProgressIndicator(),
                    transitionBuilder: (child, animation) {
                      return AnimatedSize(
                        key: const ValueKey('get_question'),
                        duration: const Duration(milliseconds: 500),
                        child: AnimatedSwitcher.defaultTransitionBuilder(
                          child,
                          animation,
                        ),
                      );
                    },
                  ),
                ),
                onPressed: () {
                  _getQuestion();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _getQuestion() async {
    state = PageState.loading;
    setState(() {});

    final characteristics =
        AppDi.of(context)!.questionCharacteristicsValueNotifier.value;
    final data = await AppDi.of(context)?.getQuestionUseCase.getQuestion(
          characteristics: characteristics,
        );
    _question = data?.text ?? '';
    state = PageState.idle;

    setState(() {});
  }
}

class _GetQuestionButtonText extends StatelessWidget {
  const _GetQuestionButtonText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Придумай вопрос!',
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
    );
  }
}

class AppDi extends InheritedWidget {
  final GetQuestionUseCase getQuestionUseCase;
  final QuestionCharacteristicsValueNotifier
      questionCharacteristicsValueNotifier;

  const AppDi({
    super.key,
    required super.child,
    required this.getQuestionUseCase,
    required this.questionCharacteristicsValueNotifier,
  });

  @override
  bool updateShouldNotify(covariant AppDi oldWidget) =>
      oldWidget.getQuestionUseCase != getQuestionUseCase ||
      questionCharacteristicsValueNotifier !=
          oldWidget.questionCharacteristicsValueNotifier;

  static AppDi? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<AppDi>();
}

class QuestionCharacteristicsValueNotifier
    extends ValueNotifier<QuestionCharacteristics> {
  QuestionCharacteristicsValueNotifier()
      : super(QuestionCharacteristics.defaultValue);
}
