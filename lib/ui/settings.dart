import 'package:flutter/material.dart';
import '../domain/model/model.dart';
import '../main.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  AppDi.of(context).questionCharacteristicsValueNotifier,
              builder: (context, data, child) {
                return Wrap(
                  direction: Axis.horizontal,
                  children: [
                    for (final characteristic in data.characteristics)
                      CharacteristicChip(characteristic: characteristic)
                  ],
                );
              },
            ),
            const _InputCharacteristic(),
          ],
        ),
      ),
    );
  }
}

class _InputCharacteristic extends StatefulWidget {
  const _InputCharacteristic({Key? key}) : super(key: key);

  @override
  _InputCharacteristicState createState() => _InputCharacteristicState();
}

class _InputCharacteristicState extends State<_InputCharacteristic> {
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
    return Row(
      children: [
        Expanded(
          child: TextField(
            focusNode: focusNode,
            autofocus: true,
            undoController: undoHistoryController,
            controller: textController,
            onSubmitted: (_) {
              submit();
            },
          ),
        ),
        IconButton(
          icon: const Icon(Icons.send_rounded),
          onPressed: () => submit(),
        ),
      ],
    );
  }

  void submit() {
    final word = textController.value.text.trim();
    textController.clear();

    final valueNotifier =
        AppDi.of(context).questionCharacteristicsValueNotifier;
    final characteristics = valueNotifier.value.characteristics.toList()
      ..add(QuestionCharacteristic(word: word));

    valueNotifier.value = valueNotifier.value.copyWith(
      characteristics: characteristics,
    );

    focusNode.requestFocus();
  }
}

class CharacteristicChip extends StatelessWidget {
  final QuestionCharacteristic characteristic;
  const CharacteristicChip({
    required this.characteristic,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ActionChip.elevated(
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(characteristic.word),
            const SizedBox(width: 4.0),
            const Icon(Icons.close_rounded),
          ],
        ),
        onPressed: () {
          final oldValue =
              AppDi.of(context).questionCharacteristicsValueNotifier.value;
          final newCharacteristics = oldValue.characteristics.where(
            (c) => c.word != characteristic.word,
          );
          final newValue = oldValue.copyWith(
            characteristics: newCharacteristics,
          );

          AppDi.of(context).questionCharacteristicsValueNotifier.value =
              newValue;
        },
      ),
    );
  }
}
