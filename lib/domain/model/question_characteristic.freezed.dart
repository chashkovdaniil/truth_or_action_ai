// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_characteristic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionCharacteristic _$QuestionCharacteristicFromJson(
    Map<String, dynamic> json) {
  return _QuestionCharacteristic.fromJson(json);
}

/// @nodoc
mixin _$QuestionCharacteristic {
  String get word => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCharacteristicCopyWith<QuestionCharacteristic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCharacteristicCopyWith<$Res> {
  factory $QuestionCharacteristicCopyWith(QuestionCharacteristic value,
          $Res Function(QuestionCharacteristic) then) =
      _$QuestionCharacteristicCopyWithImpl<$Res, QuestionCharacteristic>;
  @useResult
  $Res call({String word});
}

/// @nodoc
class _$QuestionCharacteristicCopyWithImpl<$Res,
        $Val extends QuestionCharacteristic>
    implements $QuestionCharacteristicCopyWith<$Res> {
  _$QuestionCharacteristicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionCharacteristicImplCopyWith<$Res>
    implements $QuestionCharacteristicCopyWith<$Res> {
  factory _$$QuestionCharacteristicImplCopyWith(
          _$QuestionCharacteristicImpl value,
          $Res Function(_$QuestionCharacteristicImpl) then) =
      __$$QuestionCharacteristicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String word});
}

/// @nodoc
class __$$QuestionCharacteristicImplCopyWithImpl<$Res>
    extends _$QuestionCharacteristicCopyWithImpl<$Res,
        _$QuestionCharacteristicImpl>
    implements _$$QuestionCharacteristicImplCopyWith<$Res> {
  __$$QuestionCharacteristicImplCopyWithImpl(
      _$QuestionCharacteristicImpl _value,
      $Res Function(_$QuestionCharacteristicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
  }) {
    return _then(_$QuestionCharacteristicImpl(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionCharacteristicImpl implements _QuestionCharacteristic {
  const _$QuestionCharacteristicImpl({required this.word});

  factory _$QuestionCharacteristicImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionCharacteristicImplFromJson(json);

  @override
  final String word;

  @override
  String toString() {
    return 'QuestionCharacteristic(word: $word)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionCharacteristicImpl &&
            (identical(other.word, word) || other.word == word));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, word);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionCharacteristicImplCopyWith<_$QuestionCharacteristicImpl>
      get copyWith => __$$QuestionCharacteristicImplCopyWithImpl<
          _$QuestionCharacteristicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionCharacteristicImplToJson(
      this,
    );
  }
}

abstract class _QuestionCharacteristic implements QuestionCharacteristic {
  const factory _QuestionCharacteristic({required final String word}) =
      _$QuestionCharacteristicImpl;

  factory _QuestionCharacteristic.fromJson(Map<String, dynamic> json) =
      _$QuestionCharacteristicImpl.fromJson;

  @override
  String get word;
  @override
  @JsonKey(ignore: true)
  _$$QuestionCharacteristicImplCopyWith<_$QuestionCharacteristicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
