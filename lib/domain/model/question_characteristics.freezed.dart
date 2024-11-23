// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_characteristics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionCharacteristics _$QuestionCharacteristicsFromJson(
    Map<String, dynamic> json) {
  return _QuestionCharacteristics.fromJson(json);
}

/// @nodoc
mixin _$QuestionCharacteristics {
  Iterable<QuestionCharacteristic> get characteristics =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCharacteristicsCopyWith<QuestionCharacteristics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCharacteristicsCopyWith<$Res> {
  factory $QuestionCharacteristicsCopyWith(QuestionCharacteristics value,
          $Res Function(QuestionCharacteristics) then) =
      _$QuestionCharacteristicsCopyWithImpl<$Res, QuestionCharacteristics>;
  @useResult
  $Res call({Iterable<QuestionCharacteristic> characteristics});
}

/// @nodoc
class _$QuestionCharacteristicsCopyWithImpl<$Res,
        $Val extends QuestionCharacteristics>
    implements $QuestionCharacteristicsCopyWith<$Res> {
  _$QuestionCharacteristicsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characteristics = null,
  }) {
    return _then(_value.copyWith(
      characteristics: null == characteristics
          ? _value.characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as Iterable<QuestionCharacteristic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionCharacteristicsImplCopyWith<$Res>
    implements $QuestionCharacteristicsCopyWith<$Res> {
  factory _$$QuestionCharacteristicsImplCopyWith(
          _$QuestionCharacteristicsImpl value,
          $Res Function(_$QuestionCharacteristicsImpl) then) =
      __$$QuestionCharacteristicsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Iterable<QuestionCharacteristic> characteristics});
}

/// @nodoc
class __$$QuestionCharacteristicsImplCopyWithImpl<$Res>
    extends _$QuestionCharacteristicsCopyWithImpl<$Res,
        _$QuestionCharacteristicsImpl>
    implements _$$QuestionCharacteristicsImplCopyWith<$Res> {
  __$$QuestionCharacteristicsImplCopyWithImpl(
      _$QuestionCharacteristicsImpl _value,
      $Res Function(_$QuestionCharacteristicsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characteristics = null,
  }) {
    return _then(_$QuestionCharacteristicsImpl(
      characteristics: null == characteristics
          ? _value.characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as Iterable<QuestionCharacteristic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionCharacteristicsImpl extends _QuestionCharacteristics {
  const _$QuestionCharacteristicsImpl({required this.characteristics})
      : super._();

  factory _$QuestionCharacteristicsImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionCharacteristicsImplFromJson(json);

  @override
  final Iterable<QuestionCharacteristic> characteristics;

  @override
  String toString() {
    return 'QuestionCharacteristics(characteristics: $characteristics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionCharacteristicsImpl &&
            const DeepCollectionEquality()
                .equals(other.characteristics, characteristics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(characteristics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionCharacteristicsImplCopyWith<_$QuestionCharacteristicsImpl>
      get copyWith => __$$QuestionCharacteristicsImplCopyWithImpl<
          _$QuestionCharacteristicsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionCharacteristicsImplToJson(
      this,
    );
  }
}

abstract class _QuestionCharacteristics extends QuestionCharacteristics {
  const factory _QuestionCharacteristics(
          {required final Iterable<QuestionCharacteristic> characteristics}) =
      _$QuestionCharacteristicsImpl;
  const _QuestionCharacteristics._() : super._();

  factory _QuestionCharacteristics.fromJson(Map<String, dynamic> json) =
      _$QuestionCharacteristicsImpl.fromJson;

  @override
  Iterable<QuestionCharacteristic> get characteristics;
  @override
  @JsonKey(ignore: true)
  _$$QuestionCharacteristicsImplCopyWith<_$QuestionCharacteristicsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
