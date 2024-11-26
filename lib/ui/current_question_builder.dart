import 'package:flutter/material.dart';
import '../domain/model/question.dart';
import '../main.dart';

class CurrentQuestionBuilder extends StatelessWidget {
  final Widget Function(BuildContext context, Question question) builder;
  final Widget Function(BuildContext context) nullBuilder;

  const CurrentQuestionBuilder({
    required this.builder,
    required this.nullBuilder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AppDi.of(context).questionValueNotifier,
      builder: (BuildContext context, value, Widget? child) {
        if (value == null) {
          return nullBuilder(context);
        }

        return builder(context, value);
      },
    );
  }
}
