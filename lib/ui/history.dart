import 'package:flutter/material.dart';
import '../domain/model/model.dart';

import '../main.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('История вопросов'),
        centerTitle: true,
      ),
      body: QuestionsHistoryBuilder(
        loadingBuilder: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
        builder: (context, history) {
          if (history.questions.isEmpty) {
            return const Center(
              child: Text('История пуста'),
            );
          }

          return ListView(
            children: [
              for (final question in history.questions)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(question.text),
                        const SizedBox(height: 4.0),
                        Text(
                          question.characteristics.characteristics
                              .map((c) => c.word)
                              .join(', '),
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                )
            ],
          );
        },
      ),
    );
  }
}

class QuestionsHistoryBuilder extends StatelessWidget {
  final Widget Function(BuildContext context) loadingBuilder;
  final Widget Function(BuildContext context, QuestionsHistory history) builder;
  const QuestionsHistoryBuilder({
    required this.loadingBuilder,
    required this.builder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AppDi.of(context).getQuestionUseCase.getQuestionsHistory(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return loadingBuilder(context);
        }

        return builder(context, snapshot.requireData);
      },
    );
  }
}
