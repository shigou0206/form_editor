// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DynamicFormState _$DynamicFormStateFromJson(Map<String, dynamic> json) {
  return _DynamicFormState.fromJson(json);
}

/// @nodoc
mixin _$DynamicFormState {
  Map<String, dynamic> get values => throw _privateConstructorUsedError;
  Map<String, String?> get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DynamicFormStateCopyWith<DynamicFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicFormStateCopyWith<$Res> {
  factory $DynamicFormStateCopyWith(
          DynamicFormState value, $Res Function(DynamicFormState) then) =
      _$DynamicFormStateCopyWithImpl<$Res, DynamicFormState>;
  @useResult
  $Res call({Map<String, dynamic> values, Map<String, String?> errors});
}

/// @nodoc
class _$DynamicFormStateCopyWithImpl<$Res, $Val extends DynamicFormState>
    implements $DynamicFormStateCopyWith<$Res> {
  _$DynamicFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DynamicFormStateImplCopyWith<$Res>
    implements $DynamicFormStateCopyWith<$Res> {
  factory _$$DynamicFormStateImplCopyWith(_$DynamicFormStateImpl value,
          $Res Function(_$DynamicFormStateImpl) then) =
      __$$DynamicFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> values, Map<String, String?> errors});
}

/// @nodoc
class __$$DynamicFormStateImplCopyWithImpl<$Res>
    extends _$DynamicFormStateCopyWithImpl<$Res, _$DynamicFormStateImpl>
    implements _$$DynamicFormStateImplCopyWith<$Res> {
  __$$DynamicFormStateImplCopyWithImpl(_$DynamicFormStateImpl _value,
      $Res Function(_$DynamicFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
    Object? errors = null,
  }) {
    return _then(_$DynamicFormStateImpl(
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicFormStateImpl implements _DynamicFormState {
  const _$DynamicFormStateImpl(
      {required final Map<String, dynamic> values,
      required final Map<String, String?> errors})
      : _values = values,
        _errors = errors;

  factory _$DynamicFormStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicFormStateImplFromJson(json);

  final Map<String, dynamic> _values;
  @override
  Map<String, dynamic> get values {
    if (_values is EqualUnmodifiableMapView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_values);
  }

  final Map<String, String?> _errors;
  @override
  Map<String, String?> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  String toString() {
    return 'DynamicFormState(values: $values, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicFormStateImpl &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_values),
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicFormStateImplCopyWith<_$DynamicFormStateImpl> get copyWith =>
      __$$DynamicFormStateImplCopyWithImpl<_$DynamicFormStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicFormStateImplToJson(
      this,
    );
  }
}

abstract class _DynamicFormState implements DynamicFormState {
  const factory _DynamicFormState(
      {required final Map<String, dynamic> values,
      required final Map<String, String?> errors}) = _$DynamicFormStateImpl;

  factory _DynamicFormState.fromJson(Map<String, dynamic> json) =
      _$DynamicFormStateImpl.fromJson;

  @override
  Map<String, dynamic> get values;
  @override
  Map<String, String?> get errors;
  @override
  @JsonKey(ignore: true)
  _$$DynamicFormStateImplCopyWith<_$DynamicFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
