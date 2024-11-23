import 'package:flutter/material.dart';
import 'package:truth_or_action_ai/domain/model/model.dart';
import 'package:truth_or_action_ai/main.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Настройки'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Опишите прилагательными, какими должны быть вопросы.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            ValueListenableBuilder(
              valueListenable:
                  AppDi.of(context)!.questionCharacteristicsValueNotifier,
              builder: (context, data, child) {
                return Wrap(
                  direction: Axis.horizontal,
                  children: [
                    for (final characteristic in data.characteristics)
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ActionChip.elevated(
                          label: Text(characteristic.word),
                          onPressed: () {
                            final oldValue = AppDi.of(context)!
                                .questionCharacteristicsValueNotifier
                                .value;
                            final newValue = oldValue.copyWith(
                              characteristics: oldValue.characteristics.where(
                                (c) => c.word != characteristic.word,
                              ),
                            );
                            AppDi.of(context)!
                                .questionCharacteristicsValueNotifier
                                .value = newValue;
                          },
                        ),
                      ),
                  ],
                );
              },
            ),
            const _EnterCharacteristic(),
          ],
        ),
      ),
    );
  }
}

class _EnterCharacteristic extends StatefulWidget {
  const _EnterCharacteristic({Key? key}) : super(key: key);

  @override
  __EnterCharacteristicState createState() => __EnterCharacteristicState();
}

class __EnterCharacteristicState extends State<_EnterCharacteristic> {
  late final TextEditingController textController;
  late final UndoHistoryController undoHistoryController;
  late final FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
    textController = TextEditingController();
    undoHistoryController = UndoHistoryController();
  }

  @override
  void dispose() {
    textController.dispose();
    undoHistoryController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      autofocus: true,
      undoController: undoHistoryController,
      controller: textController,
      onSubmitted: (value) {
        final word = value.trim();
        textController.clear();
        final valueNotifier =
            AppDi.of(context)!.questionCharacteristicsValueNotifier;
        final characteristics = valueNotifier.value;
        valueNotifier.value = characteristics.copyWith(characteristics: [
          ...characteristics.characteristics,
          QuestionCharacteristic(word: word),
        ]);
        focusNode.requestFocus();
      },
    );
  }
}
