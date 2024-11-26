import 'package:flutter/material.dart';

import '../model/model.dart';

class QuestionCharacteristicsValueNotifier
    extends ValueNotifier<QuestionCharacteristics> {
  QuestionCharacteristicsValueNotifier()
      : super(QuestionCharacteristics.defaultValue);
}
