import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_characteristic.freezed.dart';
part 'question_characteristic.g.dart';

@freezed
class QuestionCharacteristic with _$QuestionCharacteristic {
  const factory QuestionCharacteristic({
    required String word,
  }) = _QuestionCharacteristic;

  factory QuestionCharacteristic.fromJson(Map<String, dynamic> json) =>
      _$QuestionCharacteristicFromJson(json);
}
