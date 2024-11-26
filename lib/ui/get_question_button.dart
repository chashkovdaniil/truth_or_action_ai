import 'package:flutter/material.dart';

import '../main.dart';

enum PageState {
  idle,
  loading;

  bool get isLoading => this == PageState.loading;
  bool get isIdle => this == PageState.idle;
}

class GetQuestionButton extends StatefulWidget {
  const GetQuestionButton({Key? key}) : super(key: key);

  @override
  _GetQuestionButtonState createState() => _GetQuestionButtonState();
}

class _GetQuestionButtonState extends State<GetQuestionButton> {
  PageState state = PageState.idle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FilledButton(
        onPressed: state == PageState.loading ? null : () => _getQuestion(),
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
      ),
    );
  }

  void _getQuestion() async {
    state = PageState.loading;
    setState(() {});

    final getQuestionUseCase = AppDi.of(context).getQuestionUseCase;
    try {
      await getQuestionUseCase.getQuestion();
    } catch (error) {
      if (!mounted) {
        return;
      }

      ScaffoldMessenger.of(context).showMaterialBanner(
        MaterialBanner(
          leading: const Icon(Icons.error_outline_rounded),
          content: Text(error.toString()),
          actions: [
            TextButton(
              child: const Text('Закрыть'),
              onPressed: () =>
                  ScaffoldMessenger.of(context).clearMaterialBanners(),
            ),
          ],
        ),
      );
    }

    if (!mounted) {
      return;
    }

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
