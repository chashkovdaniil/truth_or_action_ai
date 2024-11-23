// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'yandex_gpt_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

YandexGPTResponse _$YandexGPTResponseFromJson(Map<String, dynamic> json) {
  return _YandexGPTResponse.fromJson(json);
}

/// @nodoc
mixin _$YandexGPTResponse {
  YandexGPTResult get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YandexGPTResponseCopyWith<YandexGPTResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YandexGPTResponseCopyWith<$Res> {
  factory $YandexGPTResponseCopyWith(
          YandexGPTResponse value, $Res Function(YandexGPTResponse) then) =
      _$YandexGPTResponseCopyWithImpl<$Res, YandexGPTResponse>;
  @useResult
  $Res call({YandexGPTResult result});

  $YandexGPTResultCopyWith<$Res> get result;
}

/// @nodoc
class _$YandexGPTResponseCopyWithImpl<$Res, $Val extends YandexGPTResponse>
    implements $YandexGPTResponseCopyWith<$Res> {
  _$YandexGPTResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as YandexGPTResult,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $YandexGPTResultCopyWith<$Res> get result {
    return $YandexGPTResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$YandexGPTResponseImplCopyWith<$Res>
    implements $YandexGPTResponseCopyWith<$Res> {
  factory _$$YandexGPTResponseImplCopyWith(_$YandexGPTResponseImpl value,
          $Res Function(_$YandexGPTResponseImpl) then) =
      __$$YandexGPTResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({YandexGPTResult result});

  @override
  $YandexGPTResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$YandexGPTResponseImplCopyWithImpl<$Res>
    extends _$YandexGPTResponseCopyWithImpl<$Res, _$YandexGPTResponseImpl>
    implements _$$YandexGPTResponseImplCopyWith<$Res> {
  __$$YandexGPTResponseImplCopyWithImpl(_$YandexGPTResponseImpl _value,
      $Res Function(_$YandexGPTResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$YandexGPTResponseImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as YandexGPTResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YandexGPTResponseImpl implements _YandexGPTResponse {
  const _$YandexGPTResponseImpl({required this.result});

  factory _$YandexGPTResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$YandexGPTResponseImplFromJson(json);

  @override
  final YandexGPTResult result;

  @override
  String toString() {
    return 'YandexGPTResponse(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YandexGPTResponseImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YandexGPTResponseImplCopyWith<_$YandexGPTResponseImpl> get copyWith =>
      __$$YandexGPTResponseImplCopyWithImpl<_$YandexGPTResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YandexGPTResponseImplToJson(
      this,
    );
  }
}

abstract class _YandexGPTResponse implements YandexGPTResponse {
  const factory _YandexGPTResponse({required final YandexGPTResult result}) =
      _$YandexGPTResponseImpl;

  factory _YandexGPTResponse.fromJson(Map<String, dynamic> json) =
      _$YandexGPTResponseImpl.fromJson;

  @override
  YandexGPTResult get result;
  @override
  @JsonKey(ignore: true)
  _$$YandexGPTResponseImplCopyWith<_$YandexGPTResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

YandexGPTResult _$YandexGPTResultFromJson(Map<String, dynamic> json) {
  return _YandexGPTResult.fromJson(json);
}

/// @nodoc
mixin _$YandexGPTResult {
  Iterable<YandexGPTAlternative> get alternatives =>
      throw _privateConstructorUsedError;
  YandexGPTUsage get usage => throw _privateConstructorUsedError;
  String get modelVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YandexGPTResultCopyWith<YandexGPTResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YandexGPTResultCopyWith<$Res> {
  factory $YandexGPTResultCopyWith(
          YandexGPTResult value, $Res Function(YandexGPTResult) then) =
      _$YandexGPTResultCopyWithImpl<$Res, YandexGPTResult>;
  @useResult
  $Res call(
      {Iterable<YandexGPTAlternative> alternatives,
      YandexGPTUsage usage,
      String modelVersion});

  $YandexGPTUsageCopyWith<$Res> get usage;
}

/// @nodoc
class _$YandexGPTResultCopyWithImpl<$Res, $Val extends YandexGPTResult>
    implements $YandexGPTResultCopyWith<$Res> {
  _$YandexGPTResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alternatives = null,
    Object? usage = null,
    Object? modelVersion = null,
  }) {
    return _then(_value.copyWith(
      alternatives: null == alternatives
          ? _value.alternatives
          : alternatives // ignore: cast_nullable_to_non_nullable
              as Iterable<YandexGPTAlternative>,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as YandexGPTUsage,
      modelVersion: null == modelVersion
          ? _value.modelVersion
          : modelVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $YandexGPTUsageCopyWith<$Res> get usage {
    return $YandexGPTUsageCopyWith<$Res>(_value.usage, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$YandexGPTResultImplCopyWith<$Res>
    implements $YandexGPTResultCopyWith<$Res> {
  factory _$$YandexGPTResultImplCopyWith(_$YandexGPTResultImpl value,
          $Res Function(_$YandexGPTResultImpl) then) =
      __$$YandexGPTResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Iterable<YandexGPTAlternative> alternatives,
      YandexGPTUsage usage,
      String modelVersion});

  @override
  $YandexGPTUsageCopyWith<$Res> get usage;
}

/// @nodoc
class __$$YandexGPTResultImplCopyWithImpl<$Res>
    extends _$YandexGPTResultCopyWithImpl<$Res, _$YandexGPTResultImpl>
    implements _$$YandexGPTResultImplCopyWith<$Res> {
  __$$YandexGPTResultImplCopyWithImpl(
      _$YandexGPTResultImpl _value, $Res Function(_$YandexGPTResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alternatives = null,
    Object? usage = null,
    Object? modelVersion = null,
  }) {
    return _then(_$YandexGPTResultImpl(
      alternatives: null == alternatives
          ? _value.alternatives
          : alternatives // ignore: cast_nullable_to_non_nullable
              as Iterable<YandexGPTAlternative>,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as YandexGPTUsage,
      modelVersion: null == modelVersion
          ? _value.modelVersion
          : modelVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YandexGPTResultImpl implements _YandexGPTResult {
  const _$YandexGPTResultImpl(
      {required this.alternatives,
      required this.usage,
      required this.modelVersion});

  factory _$YandexGPTResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$YandexGPTResultImplFromJson(json);

  @override
  final Iterable<YandexGPTAlternative> alternatives;
  @override
  final YandexGPTUsage usage;
  @override
  final String modelVersion;

  @override
  String toString() {
    return 'YandexGPTResult(alternatives: $alternatives, usage: $usage, modelVersion: $modelVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YandexGPTResultImpl &&
            const DeepCollectionEquality()
                .equals(other.alternatives, alternatives) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            (identical(other.modelVersion, modelVersion) ||
                other.modelVersion == modelVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(alternatives), usage, modelVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YandexGPTResultImplCopyWith<_$YandexGPTResultImpl> get copyWith =>
      __$$YandexGPTResultImplCopyWithImpl<_$YandexGPTResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YandexGPTResultImplToJson(
      this,
    );
  }
}

abstract class _YandexGPTResult implements YandexGPTResult {
  const factory _YandexGPTResult(
      {required final Iterable<YandexGPTAlternative> alternatives,
      required final YandexGPTUsage usage,
      required final String modelVersion}) = _$YandexGPTResultImpl;

  factory _YandexGPTResult.fromJson(Map<String, dynamic> json) =
      _$YandexGPTResultImpl.fromJson;

  @override
  Iterable<YandexGPTAlternative> get alternatives;
  @override
  YandexGPTUsage get usage;
  @override
  String get modelVersion;
  @override
  @JsonKey(ignore: true)
  _$$YandexGPTResultImplCopyWith<_$YandexGPTResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

YandexGPTAlternative _$YandexGPTAlternativeFromJson(Map<String, dynamic> json) {
  return _YandexGPTAlternative.fromJson(json);
}

/// @nodoc
mixin _$YandexGPTAlternative {
  YandexGPTMessage get message => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YandexGPTAlternativeCopyWith<YandexGPTAlternative> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YandexGPTAlternativeCopyWith<$Res> {
  factory $YandexGPTAlternativeCopyWith(YandexGPTAlternative value,
          $Res Function(YandexGPTAlternative) then) =
      _$YandexGPTAlternativeCopyWithImpl<$Res, YandexGPTAlternative>;
  @useResult
  $Res call({YandexGPTMessage message, String status});

  $YandexGPTMessageCopyWith<$Res> get message;
}

/// @nodoc
class _$YandexGPTAlternativeCopyWithImpl<$Res,
        $Val extends YandexGPTAlternative>
    implements $YandexGPTAlternativeCopyWith<$Res> {
  _$YandexGPTAlternativeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as YandexGPTMessage,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $YandexGPTMessageCopyWith<$Res> get message {
    return $YandexGPTMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$YandexGPTAlternativeImplCopyWith<$Res>
    implements $YandexGPTAlternativeCopyWith<$Res> {
  factory _$$YandexGPTAlternativeImplCopyWith(_$YandexGPTAlternativeImpl value,
          $Res Function(_$YandexGPTAlternativeImpl) then) =
      __$$YandexGPTAlternativeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({YandexGPTMessage message, String status});

  @override
  $YandexGPTMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$YandexGPTAlternativeImplCopyWithImpl<$Res>
    extends _$YandexGPTAlternativeCopyWithImpl<$Res, _$YandexGPTAlternativeImpl>
    implements _$$YandexGPTAlternativeImplCopyWith<$Res> {
  __$$YandexGPTAlternativeImplCopyWithImpl(_$YandexGPTAlternativeImpl _value,
      $Res Function(_$YandexGPTAlternativeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_$YandexGPTAlternativeImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as YandexGPTMessage,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YandexGPTAlternativeImpl implements _YandexGPTAlternative {
  const _$YandexGPTAlternativeImpl(
      {required this.message, required this.status});

  factory _$YandexGPTAlternativeImpl.fromJson(Map<String, dynamic> json) =>
      _$$YandexGPTAlternativeImplFromJson(json);

  @override
  final YandexGPTMessage message;
  @override
  final String status;

  @override
  String toString() {
    return 'YandexGPTAlternative(message: $message, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YandexGPTAlternativeImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YandexGPTAlternativeImplCopyWith<_$YandexGPTAlternativeImpl>
      get copyWith =>
          __$$YandexGPTAlternativeImplCopyWithImpl<_$YandexGPTAlternativeImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YandexGPTAlternativeImplToJson(
      this,
    );
  }
}

abstract class _YandexGPTAlternative implements YandexGPTAlternative {
  const factory _YandexGPTAlternative(
      {required final YandexGPTMessage message,
      required final String status}) = _$YandexGPTAlternativeImpl;

  factory _YandexGPTAlternative.fromJson(Map<String, dynamic> json) =
      _$YandexGPTAlternativeImpl.fromJson;

  @override
  YandexGPTMessage get message;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$YandexGPTAlternativeImplCopyWith<_$YandexGPTAlternativeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

YandexGPTMessage _$YandexGPTMessageFromJson(Map<String, dynamic> json) {
  return _YandexGPTMessage.fromJson(json);
}

/// @nodoc
mixin _$YandexGPTMessage {
  String get role => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YandexGPTMessageCopyWith<YandexGPTMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YandexGPTMessageCopyWith<$Res> {
  factory $YandexGPTMessageCopyWith(
          YandexGPTMessage value, $Res Function(YandexGPTMessage) then) =
      _$YandexGPTMessageCopyWithImpl<$Res, YandexGPTMessage>;
  @useResult
  $Res call({String role, String text});
}

/// @nodoc
class _$YandexGPTMessageCopyWithImpl<$Res, $Val extends YandexGPTMessage>
    implements $YandexGPTMessageCopyWith<$Res> {
  _$YandexGPTMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YandexGPTMessageImplCopyWith<$Res>
    implements $YandexGPTMessageCopyWith<$Res> {
  factory _$$YandexGPTMessageImplCopyWith(_$YandexGPTMessageImpl value,
          $Res Function(_$YandexGPTMessageImpl) then) =
      __$$YandexGPTMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String role, String text});
}

/// @nodoc
class __$$YandexGPTMessageImplCopyWithImpl<$Res>
    extends _$YandexGPTMessageCopyWithImpl<$Res, _$YandexGPTMessageImpl>
    implements _$$YandexGPTMessageImplCopyWith<$Res> {
  __$$YandexGPTMessageImplCopyWithImpl(_$YandexGPTMessageImpl _value,
      $Res Function(_$YandexGPTMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? text = null,
  }) {
    return _then(_$YandexGPTMessageImpl(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YandexGPTMessageImpl implements _YandexGPTMessage {
  const _$YandexGPTMessageImpl({required this.role, required this.text});

  factory _$YandexGPTMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$YandexGPTMessageImplFromJson(json);

  @override
  final String role;
  @override
  final String text;

  @override
  String toString() {
    return 'YandexGPTMessage(role: $role, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YandexGPTMessageImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YandexGPTMessageImplCopyWith<_$YandexGPTMessageImpl> get copyWith =>
      __$$YandexGPTMessageImplCopyWithImpl<_$YandexGPTMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YandexGPTMessageImplToJson(
      this,
    );
  }
}

abstract class _YandexGPTMessage implements YandexGPTMessage {
  const factory _YandexGPTMessage(
      {required final String role,
      required final String text}) = _$YandexGPTMessageImpl;

  factory _YandexGPTMessage.fromJson(Map<String, dynamic> json) =
      _$YandexGPTMessageImpl.fromJson;

  @override
  String get role;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$YandexGPTMessageImplCopyWith<_$YandexGPTMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

YandexGPTUsage _$YandexGPTUsageFromJson(Map<String, dynamic> json) {
  return _YandexGPTUsage.fromJson(json);
}

/// @nodoc
mixin _$YandexGPTUsage {
  String get inputTextTokens => throw _privateConstructorUsedError;
  String get completionTokens => throw _privateConstructorUsedError;
  String get totalTokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YandexGPTUsageCopyWith<YandexGPTUsage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YandexGPTUsageCopyWith<$Res> {
  factory $YandexGPTUsageCopyWith(
          YandexGPTUsage value, $Res Function(YandexGPTUsage) then) =
      _$YandexGPTUsageCopyWithImpl<$Res, YandexGPTUsage>;
  @useResult
  $Res call(
      {String inputTextTokens, String completionTokens, String totalTokens});
}

/// @nodoc
class _$YandexGPTUsageCopyWithImpl<$Res, $Val extends YandexGPTUsage>
    implements $YandexGPTUsageCopyWith<$Res> {
  _$YandexGPTUsageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputTextTokens = null,
    Object? completionTokens = null,
    Object? totalTokens = null,
  }) {
    return _then(_value.copyWith(
      inputTextTokens: null == inputTextTokens
          ? _value.inputTextTokens
          : inputTextTokens // ignore: cast_nullable_to_non_nullable
              as String,
      completionTokens: null == completionTokens
          ? _value.completionTokens
          : completionTokens // ignore: cast_nullable_to_non_nullable
              as String,
      totalTokens: null == totalTokens
          ? _value.totalTokens
          : totalTokens // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YandexGPTUsageImplCopyWith<$Res>
    implements $YandexGPTUsageCopyWith<$Res> {
  factory _$$YandexGPTUsageImplCopyWith(_$YandexGPTUsageImpl value,
          $Res Function(_$YandexGPTUsageImpl) then) =
      __$$YandexGPTUsageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String inputTextTokens, String completionTokens, String totalTokens});
}

/// @nodoc
class __$$YandexGPTUsageImplCopyWithImpl<$Res>
    extends _$YandexGPTUsageCopyWithImpl<$Res, _$YandexGPTUsageImpl>
    implements _$$YandexGPTUsageImplCopyWith<$Res> {
  __$$YandexGPTUsageImplCopyWithImpl(
      _$YandexGPTUsageImpl _value, $Res Function(_$YandexGPTUsageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputTextTokens = null,
    Object? completionTokens = null,
    Object? totalTokens = null,
  }) {
    return _then(_$YandexGPTUsageImpl(
      inputTextTokens: null == inputTextTokens
          ? _value.inputTextTokens
          : inputTextTokens // ignore: cast_nullable_to_non_nullable
              as String,
      completionTokens: null == completionTokens
          ? _value.completionTokens
          : completionTokens // ignore: cast_nullable_to_non_nullable
              as String,
      totalTokens: null == totalTokens
          ? _value.totalTokens
          : totalTokens // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YandexGPTUsageImpl implements _YandexGPTUsage {
  const _$YandexGPTUsageImpl(
      {required this.inputTextTokens,
      required this.completionTokens,
      required this.totalTokens});

  factory _$YandexGPTUsageImpl.fromJson(Map<String, dynamic> json) =>
      _$$YandexGPTUsageImplFromJson(json);

  @override
  final String inputTextTokens;
  @override
  final String completionTokens;
  @override
  final String totalTokens;

  @override
  String toString() {
    return 'YandexGPTUsage(inputTextTokens: $inputTextTokens, completionTokens: $completionTokens, totalTokens: $totalTokens)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YandexGPTUsageImpl &&
            (identical(other.inputTextTokens, inputTextTokens) ||
                other.inputTextTokens == inputTextTokens) &&
            (identical(other.completionTokens, completionTokens) ||
                other.completionTokens == completionTokens) &&
            (identical(other.totalTokens, totalTokens) ||
                other.totalTokens == totalTokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, inputTextTokens, completionTokens, totalTokens);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YandexGPTUsageImplCopyWith<_$YandexGPTUsageImpl> get copyWith =>
      __$$YandexGPTUsageImplCopyWithImpl<_$YandexGPTUsageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YandexGPTUsageImplToJson(
      this,
    );
  }
}

abstract class _YandexGPTUsage implements YandexGPTUsage {
  const factory _YandexGPTUsage(
      {required final String inputTextTokens,
      required final String completionTokens,
      required final String totalTokens}) = _$YandexGPTUsageImpl;

  factory _YandexGPTUsage.fromJson(Map<String, dynamic> json) =
      _$YandexGPTUsageImpl.fromJson;

  @override
  String get inputTextTokens;
  @override
  String get completionTokens;
  @override
  String get totalTokens;
  @override
  @JsonKey(ignore: true)
  _$$YandexGPTUsageImplCopyWith<_$YandexGPTUsageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
