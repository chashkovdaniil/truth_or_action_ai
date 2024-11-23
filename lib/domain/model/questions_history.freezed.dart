// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questions_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionsHistory _$QuestionsHistoryFromJson(Map<String, dynamic> json) {
  return _QuestionsHistory.fromJson(json);
}

/// @nodoc
mixin _$QuestionsHistory {
  Iterable<Question> get questions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionsHistoryCopyWith<QuestionsHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionsHistoryCopyWith<$Res> {
  factory $QuestionsHistoryCopyWith(
          QuestionsHistory value, $Res Function(QuestionsHistory) then) =
      _$QuestionsHistoryCopyWithImpl<$Res, QuestionsHistory>;
  @useResult
  $Res call({Iterable<Question> questions});
}

/// @nodoc
class _$QuestionsHistoryCopyWithImpl<$Res, $Val extends QuestionsHistory>
    implements $QuestionsHistoryCopyWith<$Res> {
  _$QuestionsHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as Iterable<Question>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionsHistoryImplCopyWith<$Res>
    implements $QuestionsHistoryCopyWith<$Res> {
  factory _$$QuestionsHistoryImplCopyWith(_$QuestionsHistoryImpl value,
          $Res Function(_$QuestionsHistoryImpl) then) =
      __$$QuestionsHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Iterable<Question> questions});
}

/// @nodoc
class __$$QuestionsHistoryImplCopyWithImpl<$Res>
    extends _$QuestionsHistoryCopyWithImpl<$Res, _$QuestionsHistoryImpl>
    implements _$$QuestionsHistoryImplCopyWith<$Res> {
  __$$QuestionsHistoryImplCopyWithImpl(_$QuestionsHistoryImpl _value,
      $Res Function(_$QuestionsHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
  }) {
    return _then(_$QuestionsHistoryImpl(
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as Iterable<Question>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionsHistoryImpl implements _QuestionsHistory {
  const _$QuestionsHistoryImpl({required this.questions});

  factory _$QuestionsHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionsHistoryImplFromJson(json);

  @override
  final Iterable<Question> questions;

  @override
  String toString() {
    return 'QuestionsHistory(questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionsHistoryImpl &&
            const DeepCollectionEquality().equals(other.questions, questions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionsHistoryImplCopyWith<_$QuestionsHistoryImpl> get copyWith =>
      __$$QuestionsHistoryImplCopyWithImpl<_$QuestionsHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionsHistoryImplToJson(
      this,
    );
  }
}

abstract class _QuestionsHistory implements QuestionsHistory {
  const factory _QuestionsHistory(
      {required final Iterable<Question> questions}) = _$QuestionsHistoryImpl;

  factory _QuestionsHistory.fromJson(Map<String, dynamic> json) =
      _$QuestionsHistoryImpl.fromJson;

  @override
  Iterable<Question> get questions;
  @override
  @JsonKey(ignore: true)
  _$$QuestionsHistoryImplCopyWith<_$QuestionsHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
