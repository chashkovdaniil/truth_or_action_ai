import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:truth_or_action_ai/domain/model/model.dart';

class HistoryPage extends StatelessWidget {
  final QuestionsHistory history;
  const HistoryPage({Key? key, required this.history}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('История вопросов'),
        centerTitle: true,
      ),
      body: ListView(
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
      ),
    );
  }
}
