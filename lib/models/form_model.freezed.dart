// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FormModel _$FormModelFromJson(Map<String, dynamic> json) {
  return _FormModel.fromJson(json);
}

/// @nodoc
mixin _$FormModel {
  String get formId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<FormSection> get sections => throw _privateConstructorUsedError;
  FormActions get actions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormModelCopyWith<FormModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormModelCopyWith<$Res> {
  factory $FormModelCopyWith(FormModel value, $Res Function(FormModel) then) =
      _$FormModelCopyWithImpl<$Res, FormModel>;
  @useResult
  $Res call(
      {String formId,
      String title,
      String description,
      List<FormSection> sections,
      FormActions actions});

  $FormActionsCopyWith<$Res> get actions;
}

/// @nodoc
class _$FormModelCopyWithImpl<$Res, $Val extends FormModel>
    implements $FormModelCopyWith<$Res> {
  _$FormModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formId = null,
    Object? title = null,
    Object? description = null,
    Object? sections = null,
    Object? actions = null,
  }) {
    return _then(_value.copyWith(
      formId: null == formId
          ? _value.formId
          : formId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sections: null == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<FormSection>,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as FormActions,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormActionsCopyWith<$Res> get actions {
    return $FormActionsCopyWith<$Res>(_value.actions, (value) {
      return _then(_value.copyWith(actions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FormModelImplCopyWith<$Res>
    implements $FormModelCopyWith<$Res> {
  factory _$$FormModelImplCopyWith(
          _$FormModelImpl value, $Res Function(_$FormModelImpl) then) =
      __$$FormModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String formId,
      String title,
      String description,
      List<FormSection> sections,
      FormActions actions});

  @override
  $FormActionsCopyWith<$Res> get actions;
}

/// @nodoc
class __$$FormModelImplCopyWithImpl<$Res>
    extends _$FormModelCopyWithImpl<$Res, _$FormModelImpl>
    implements _$$FormModelImplCopyWith<$Res> {
  __$$FormModelImplCopyWithImpl(
      _$FormModelImpl _value, $Res Function(_$FormModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formId = null,
    Object? title = null,
    Object? description = null,
    Object? sections = null,
    Object? actions = null,
  }) {
    return _then(_$FormModelImpl(
      formId: null == formId
          ? _value.formId
          : formId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sections: null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<FormSection>,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as FormActions,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormModelImpl implements _FormModel {
  const _$FormModelImpl(
      {required this.formId,
      required this.title,
      required this.description,
      required final List<FormSection> sections,
      required this.actions})
      : _sections = sections;

  factory _$FormModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormModelImplFromJson(json);

  @override
  final String formId;
  @override
  final String title;
  @override
  final String description;
  final List<FormSection> _sections;
  @override
  List<FormSection> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  final FormActions actions;

  @override
  String toString() {
    return 'FormModel(formId: $formId, title: $title, description: $description, sections: $sections, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormModelImpl &&
            (identical(other.formId, formId) || other.formId == formId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            (identical(other.actions, actions) || other.actions == actions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, formId, title, description,
      const DeepCollectionEquality().hash(_sections), actions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormModelImplCopyWith<_$FormModelImpl> get copyWith =>
      __$$FormModelImplCopyWithImpl<_$FormModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormModelImplToJson(
      this,
    );
  }
}

abstract class _FormModel implements FormModel {
  const factory _FormModel(
      {required final String formId,
      required final String title,
      required final String description,
      required final List<FormSection> sections,
      required final FormActions actions}) = _$FormModelImpl;

  factory _FormModel.fromJson(Map<String, dynamic> json) =
      _$FormModelImpl.fromJson;

  @override
  String get formId;
  @override
  String get title;
  @override
  String get description;
  @override
  List<FormSection> get sections;
  @override
  FormActions get actions;
  @override
  @JsonKey(ignore: true)
  _$$FormModelImplCopyWith<_$FormModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FormSection _$FormSectionFromJson(Map<String, dynamic> json) {
  return _FormSection.fromJson(json);
}

/// @nodoc
mixin _$FormSection {
  String get title => throw _privateConstructorUsedError;
  List<FormFieldModel> get fields => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormSectionCopyWith<FormSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormSectionCopyWith<$Res> {
  factory $FormSectionCopyWith(
          FormSection value, $Res Function(FormSection) then) =
      _$FormSectionCopyWithImpl<$Res, FormSection>;
  @useResult
  $Res call({String title, List<FormFieldModel> fields});
}

/// @nodoc
class _$FormSectionCopyWithImpl<$Res, $Val extends FormSection>
    implements $FormSectionCopyWith<$Res> {
  _$FormSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? fields = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FormFieldModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormSectionImplCopyWith<$Res>
    implements $FormSectionCopyWith<$Res> {
  factory _$$FormSectionImplCopyWith(
          _$FormSectionImpl value, $Res Function(_$FormSectionImpl) then) =
      __$$FormSectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<FormFieldModel> fields});
}

/// @nodoc
class __$$FormSectionImplCopyWithImpl<$Res>
    extends _$FormSectionCopyWithImpl<$Res, _$FormSectionImpl>
    implements _$$FormSectionImplCopyWith<$Res> {
  __$$FormSectionImplCopyWithImpl(
      _$FormSectionImpl _value, $Res Function(_$FormSectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? fields = null,
  }) {
    return _then(_$FormSectionImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FormFieldModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormSectionImpl implements _FormSection {
  const _$FormSectionImpl(
      {required this.title, required final List<FormFieldModel> fields})
      : _fields = fields;

  factory _$FormSectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormSectionImplFromJson(json);

  @override
  final String title;
  final List<FormFieldModel> _fields;
  @override
  List<FormFieldModel> get fields {
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fields);
  }

  @override
  String toString() {
    return 'FormSection(title: $title, fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormSectionImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_fields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormSectionImplCopyWith<_$FormSectionImpl> get copyWith =>
      __$$FormSectionImplCopyWithImpl<_$FormSectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormSectionImplToJson(
      this,
    );
  }
}

abstract class _FormSection implements FormSection {
  const factory _FormSection(
      {required final String title,
      required final List<FormFieldModel> fields}) = _$FormSectionImpl;

  factory _FormSection.fromJson(Map<String, dynamic> json) =
      _$FormSectionImpl.fromJson;

  @override
  String get title;
  @override
  List<FormFieldModel> get fields;
  @override
  @JsonKey(ignore: true)
  _$$FormSectionImplCopyWith<_$FormSectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FormFieldModel _$FormFieldModelFromJson(Map<String, dynamic> json) {
  return _FormFieldModel.fromJson(json);
}

/// @nodoc
mixin _$FormFieldModel {
  String get id => throw _privateConstructorUsedError;
  FieldType get type => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String? get helpText => throw _privateConstructorUsedError;
  String? get placeholder => throw _privateConstructorUsedError;
  dynamic get defaultValue => throw _privateConstructorUsedError;
  bool get required => throw _privateConstructorUsedError;
  List<OptionModel>? get options => throw _privateConstructorUsedError;
  DisplayCondition? get displayCondition => throw _privateConstructorUsedError;
  ValidationRule? get validation => throw _privateConstructorUsedError;
  ApiBinding? get apiBinding => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormFieldModelCopyWith<FormFieldModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormFieldModelCopyWith<$Res> {
  factory $FormFieldModelCopyWith(
          FormFieldModel value, $Res Function(FormFieldModel) then) =
      _$FormFieldModelCopyWithImpl<$Res, FormFieldModel>;
  @useResult
  $Res call(
      {String id,
      FieldType type,
      String label,
      String? helpText,
      String? placeholder,
      dynamic defaultValue,
      bool required,
      List<OptionModel>? options,
      DisplayCondition? displayCondition,
      ValidationRule? validation,
      ApiBinding? apiBinding});

  $DisplayConditionCopyWith<$Res>? get displayCondition;
  $ValidationRuleCopyWith<$Res>? get validation;
  $ApiBindingCopyWith<$Res>? get apiBinding;
}

/// @nodoc
class _$FormFieldModelCopyWithImpl<$Res, $Val extends FormFieldModel>
    implements $FormFieldModelCopyWith<$Res> {
  _$FormFieldModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? label = null,
    Object? helpText = freezed,
    Object? placeholder = freezed,
    Object? defaultValue = freezed,
    Object? required = null,
    Object? options = freezed,
    Object? displayCondition = freezed,
    Object? validation = freezed,
    Object? apiBinding = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FieldType,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      helpText: freezed == helpText
          ? _value.helpText
          : helpText // ignore: cast_nullable_to_non_nullable
              as String?,
      placeholder: freezed == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<OptionModel>?,
      displayCondition: freezed == displayCondition
          ? _value.displayCondition
          : displayCondition // ignore: cast_nullable_to_non_nullable
              as DisplayCondition?,
      validation: freezed == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as ValidationRule?,
      apiBinding: freezed == apiBinding
          ? _value.apiBinding
          : apiBinding // ignore: cast_nullable_to_non_nullable
              as ApiBinding?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DisplayConditionCopyWith<$Res>? get displayCondition {
    if (_value.displayCondition == null) {
      return null;
    }

    return $DisplayConditionCopyWith<$Res>(_value.displayCondition!, (value) {
      return _then(_value.copyWith(displayCondition: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ValidationRuleCopyWith<$Res>? get validation {
    if (_value.validation == null) {
      return null;
    }

    return $ValidationRuleCopyWith<$Res>(_value.validation!, (value) {
      return _then(_value.copyWith(validation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiBindingCopyWith<$Res>? get apiBinding {
    if (_value.apiBinding == null) {
      return null;
    }

    return $ApiBindingCopyWith<$Res>(_value.apiBinding!, (value) {
      return _then(_value.copyWith(apiBinding: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FormFieldModelImplCopyWith<$Res>
    implements $FormFieldModelCopyWith<$Res> {
  factory _$$FormFieldModelImplCopyWith(_$FormFieldModelImpl value,
          $Res Function(_$FormFieldModelImpl) then) =
      __$$FormFieldModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      FieldType type,
      String label,
      String? helpText,
      String? placeholder,
      dynamic defaultValue,
      bool required,
      List<OptionModel>? options,
      DisplayCondition? displayCondition,
      ValidationRule? validation,
      ApiBinding? apiBinding});

  @override
  $DisplayConditionCopyWith<$Res>? get displayCondition;
  @override
  $ValidationRuleCopyWith<$Res>? get validation;
  @override
  $ApiBindingCopyWith<$Res>? get apiBinding;
}

/// @nodoc
class __$$FormFieldModelImplCopyWithImpl<$Res>
    extends _$FormFieldModelCopyWithImpl<$Res, _$FormFieldModelImpl>
    implements _$$FormFieldModelImplCopyWith<$Res> {
  __$$FormFieldModelImplCopyWithImpl(
      _$FormFieldModelImpl _value, $Res Function(_$FormFieldModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? label = null,
    Object? helpText = freezed,
    Object? placeholder = freezed,
    Object? defaultValue = freezed,
    Object? required = null,
    Object? options = freezed,
    Object? displayCondition = freezed,
    Object? validation = freezed,
    Object? apiBinding = freezed,
  }) {
    return _then(_$FormFieldModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FieldType,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      helpText: freezed == helpText
          ? _value.helpText
          : helpText // ignore: cast_nullable_to_non_nullable
              as String?,
      placeholder: freezed == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<OptionModel>?,
      displayCondition: freezed == displayCondition
          ? _value.displayCondition
          : displayCondition // ignore: cast_nullable_to_non_nullable
              as DisplayCondition?,
      validation: freezed == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as ValidationRule?,
      apiBinding: freezed == apiBinding
          ? _value.apiBinding
          : apiBinding // ignore: cast_nullable_to_non_nullable
              as ApiBinding?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormFieldModelImpl implements _FormFieldModel {
  const _$FormFieldModelImpl(
      {required this.id,
      required this.type,
      required this.label,
      this.helpText,
      this.placeholder,
      this.defaultValue,
      this.required = false,
      final List<OptionModel>? options,
      this.displayCondition,
      this.validation,
      this.apiBinding})
      : _options = options;

  factory _$FormFieldModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormFieldModelImplFromJson(json);

  @override
  final String id;
  @override
  final FieldType type;
  @override
  final String label;
  @override
  final String? helpText;
  @override
  final String? placeholder;
  @override
  final dynamic defaultValue;
  @override
  @JsonKey()
  final bool required;
  final List<OptionModel>? _options;
  @override
  List<OptionModel>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DisplayCondition? displayCondition;
  @override
  final ValidationRule? validation;
  @override
  final ApiBinding? apiBinding;

  @override
  String toString() {
    return 'FormFieldModel(id: $id, type: $type, label: $label, helpText: $helpText, placeholder: $placeholder, defaultValue: $defaultValue, required: $required, options: $options, displayCondition: $displayCondition, validation: $validation, apiBinding: $apiBinding)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormFieldModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.helpText, helpText) ||
                other.helpText == helpText) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            const DeepCollectionEquality()
                .equals(other.defaultValue, defaultValue) &&
            (identical(other.required, required) ||
                other.required == required) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.displayCondition, displayCondition) ||
                other.displayCondition == displayCondition) &&
            (identical(other.validation, validation) ||
                other.validation == validation) &&
            (identical(other.apiBinding, apiBinding) ||
                other.apiBinding == apiBinding));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      label,
      helpText,
      placeholder,
      const DeepCollectionEquality().hash(defaultValue),
      required,
      const DeepCollectionEquality().hash(_options),
      displayCondition,
      validation,
      apiBinding);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormFieldModelImplCopyWith<_$FormFieldModelImpl> get copyWith =>
      __$$FormFieldModelImplCopyWithImpl<_$FormFieldModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormFieldModelImplToJson(
      this,
    );
  }
}

abstract class _FormFieldModel implements FormFieldModel {
  const factory _FormFieldModel(
      {required final String id,
      required final FieldType type,
      required final String label,
      final String? helpText,
      final String? placeholder,
      final dynamic defaultValue,
      final bool required,
      final List<OptionModel>? options,
      final DisplayCondition? displayCondition,
      final ValidationRule? validation,
      final ApiBinding? apiBinding}) = _$FormFieldModelImpl;

  factory _FormFieldModel.fromJson(Map<String, dynamic> json) =
      _$FormFieldModelImpl.fromJson;

  @override
  String get id;
  @override
  FieldType get type;
  @override
  String get label;
  @override
  String? get helpText;
  @override
  String? get placeholder;
  @override
  dynamic get defaultValue;
  @override
  bool get required;
  @override
  List<OptionModel>? get options;
  @override
  DisplayCondition? get displayCondition;
  @override
  ValidationRule? get validation;
  @override
  ApiBinding? get apiBinding;
  @override
  @JsonKey(ignore: true)
  _$$FormFieldModelImplCopyWith<_$FormFieldModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OptionModel _$OptionModelFromJson(Map<String, dynamic> json) {
  return _OptionModel.fromJson(json);
}

/// @nodoc
mixin _$OptionModel {
  String get label => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OptionModelCopyWith<OptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionModelCopyWith<$Res> {
  factory $OptionModelCopyWith(
          OptionModel value, $Res Function(OptionModel) then) =
      _$OptionModelCopyWithImpl<$Res, OptionModel>;
  @useResult
  $Res call({String label, dynamic value});
}

/// @nodoc
class _$OptionModelCopyWithImpl<$Res, $Val extends OptionModel>
    implements $OptionModelCopyWith<$Res> {
  _$OptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptionModelImplCopyWith<$Res>
    implements $OptionModelCopyWith<$Res> {
  factory _$$OptionModelImplCopyWith(
          _$OptionModelImpl value, $Res Function(_$OptionModelImpl) then) =
      __$$OptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, dynamic value});
}

/// @nodoc
class __$$OptionModelImplCopyWithImpl<$Res>
    extends _$OptionModelCopyWithImpl<$Res, _$OptionModelImpl>
    implements _$$OptionModelImplCopyWith<$Res> {
  __$$OptionModelImplCopyWithImpl(
      _$OptionModelImpl _value, $Res Function(_$OptionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = freezed,
  }) {
    return _then(_$OptionModelImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OptionModelImpl implements _OptionModel {
  const _$OptionModelImpl({required this.label, required this.value});

  factory _$OptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionModelImplFromJson(json);

  @override
  final String label;
  @override
  final dynamic value;

  @override
  String toString() {
    return 'OptionModel(label: $label, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionModelImpl &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, label, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionModelImplCopyWith<_$OptionModelImpl> get copyWith =>
      __$$OptionModelImplCopyWithImpl<_$OptionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionModelImplToJson(
      this,
    );
  }
}

abstract class _OptionModel implements OptionModel {
  const factory _OptionModel(
      {required final String label,
      required final dynamic value}) = _$OptionModelImpl;

  factory _OptionModel.fromJson(Map<String, dynamic> json) =
      _$OptionModelImpl.fromJson;

  @override
  String get label;
  @override
  dynamic get value;
  @override
  @JsonKey(ignore: true)
  _$$OptionModelImplCopyWith<_$OptionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DisplayCondition _$DisplayConditionFromJson(Map<String, dynamic> json) {
  return _DisplayCondition.fromJson(json);
}

/// @nodoc
mixin _$DisplayCondition {
  String get field => throw _privateConstructorUsedError;
  String get operator => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DisplayConditionCopyWith<DisplayCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisplayConditionCopyWith<$Res> {
  factory $DisplayConditionCopyWith(
          DisplayCondition value, $Res Function(DisplayCondition) then) =
      _$DisplayConditionCopyWithImpl<$Res, DisplayCondition>;
  @useResult
  $Res call({String field, String operator, dynamic value});
}

/// @nodoc
class _$DisplayConditionCopyWithImpl<$Res, $Val extends DisplayCondition>
    implements $DisplayConditionCopyWith<$Res> {
  _$DisplayConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? operator = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      operator: null == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisplayConditionImplCopyWith<$Res>
    implements $DisplayConditionCopyWith<$Res> {
  factory _$$DisplayConditionImplCopyWith(_$DisplayConditionImpl value,
          $Res Function(_$DisplayConditionImpl) then) =
      __$$DisplayConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String field, String operator, dynamic value});
}

/// @nodoc
class __$$DisplayConditionImplCopyWithImpl<$Res>
    extends _$DisplayConditionCopyWithImpl<$Res, _$DisplayConditionImpl>
    implements _$$DisplayConditionImplCopyWith<$Res> {
  __$$DisplayConditionImplCopyWithImpl(_$DisplayConditionImpl _value,
      $Res Function(_$DisplayConditionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? operator = null,
    Object? value = freezed,
  }) {
    return _then(_$DisplayConditionImpl(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      operator: null == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisplayConditionImpl implements _DisplayCondition {
  const _$DisplayConditionImpl(
      {required this.field, required this.operator, required this.value});

  factory _$DisplayConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisplayConditionImplFromJson(json);

  @override
  final String field;
  @override
  final String operator;
  @override
  final dynamic value;

  @override
  String toString() {
    return 'DisplayCondition(field: $field, operator: $operator, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayConditionImpl &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, field, operator, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayConditionImplCopyWith<_$DisplayConditionImpl> get copyWith =>
      __$$DisplayConditionImplCopyWithImpl<_$DisplayConditionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisplayConditionImplToJson(
      this,
    );
  }
}

abstract class _DisplayCondition implements DisplayCondition {
  const factory _DisplayCondition(
      {required final String field,
      required final String operator,
      required final dynamic value}) = _$DisplayConditionImpl;

  factory _DisplayCondition.fromJson(Map<String, dynamic> json) =
      _$DisplayConditionImpl.fromJson;

  @override
  String get field;
  @override
  String get operator;
  @override
  dynamic get value;
  @override
  @JsonKey(ignore: true)
  _$$DisplayConditionImplCopyWith<_$DisplayConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ValidationRule _$ValidationRuleFromJson(Map<String, dynamic> json) {
  return _ValidationRule.fromJson(json);
}

/// @nodoc
mixin _$ValidationRule {
  String? get pattern => throw _privateConstructorUsedError;
  String? get custom => throw _privateConstructorUsedError;
  num? get min => throw _privateConstructorUsedError;
  num? get max => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidationRuleCopyWith<ValidationRule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationRuleCopyWith<$Res> {
  factory $ValidationRuleCopyWith(
          ValidationRule value, $Res Function(ValidationRule) then) =
      _$ValidationRuleCopyWithImpl<$Res, ValidationRule>;
  @useResult
  $Res call({String? pattern, String? custom, num? min, num? max});
}

/// @nodoc
class _$ValidationRuleCopyWithImpl<$Res, $Val extends ValidationRule>
    implements $ValidationRuleCopyWith<$Res> {
  _$ValidationRuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pattern = freezed,
    Object? custom = freezed,
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_value.copyWith(
      pattern: freezed == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String?,
      custom: freezed == custom
          ? _value.custom
          : custom // ignore: cast_nullable_to_non_nullable
              as String?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as num?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidationRuleImplCopyWith<$Res>
    implements $ValidationRuleCopyWith<$Res> {
  factory _$$ValidationRuleImplCopyWith(_$ValidationRuleImpl value,
          $Res Function(_$ValidationRuleImpl) then) =
      __$$ValidationRuleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? pattern, String? custom, num? min, num? max});
}

/// @nodoc
class __$$ValidationRuleImplCopyWithImpl<$Res>
    extends _$ValidationRuleCopyWithImpl<$Res, _$ValidationRuleImpl>
    implements _$$ValidationRuleImplCopyWith<$Res> {
  __$$ValidationRuleImplCopyWithImpl(
      _$ValidationRuleImpl _value, $Res Function(_$ValidationRuleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pattern = freezed,
    Object? custom = freezed,
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_$ValidationRuleImpl(
      pattern: freezed == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String?,
      custom: freezed == custom
          ? _value.custom
          : custom // ignore: cast_nullable_to_non_nullable
              as String?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as num?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidationRuleImpl implements _ValidationRule {
  const _$ValidationRuleImpl({this.pattern, this.custom, this.min, this.max});

  factory _$ValidationRuleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidationRuleImplFromJson(json);

  @override
  final String? pattern;
  @override
  final String? custom;
  @override
  final num? min;
  @override
  final num? max;

  @override
  String toString() {
    return 'ValidationRule(pattern: $pattern, custom: $custom, min: $min, max: $max)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationRuleImpl &&
            (identical(other.pattern, pattern) || other.pattern == pattern) &&
            (identical(other.custom, custom) || other.custom == custom) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pattern, custom, min, max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationRuleImplCopyWith<_$ValidationRuleImpl> get copyWith =>
      __$$ValidationRuleImplCopyWithImpl<_$ValidationRuleImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidationRuleImplToJson(
      this,
    );
  }
}

abstract class _ValidationRule implements ValidationRule {
  const factory _ValidationRule(
      {final String? pattern,
      final String? custom,
      final num? min,
      final num? max}) = _$ValidationRuleImpl;

  factory _ValidationRule.fromJson(Map<String, dynamic> json) =
      _$ValidationRuleImpl.fromJson;

  @override
  String? get pattern;
  @override
  String? get custom;
  @override
  num? get min;
  @override
  num? get max;
  @override
  @JsonKey(ignore: true)
  _$$ValidationRuleImplCopyWith<_$ValidationRuleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiBinding _$ApiBindingFromJson(Map<String, dynamic> json) {
  return _ApiBinding.fromJson(json);
}

/// @nodoc
mixin _$ApiBinding {
  String get inLocation => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiBindingCopyWith<ApiBinding> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiBindingCopyWith<$Res> {
  factory $ApiBindingCopyWith(
          ApiBinding value, $Res Function(ApiBinding) then) =
      _$ApiBindingCopyWithImpl<$Res, ApiBinding>;
  @useResult
  $Res call({String inLocation, String name});
}

/// @nodoc
class _$ApiBindingCopyWithImpl<$Res, $Val extends ApiBinding>
    implements $ApiBindingCopyWith<$Res> {
  _$ApiBindingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inLocation = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      inLocation: null == inLocation
          ? _value.inLocation
          : inLocation // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiBindingImplCopyWith<$Res>
    implements $ApiBindingCopyWith<$Res> {
  factory _$$ApiBindingImplCopyWith(
          _$ApiBindingImpl value, $Res Function(_$ApiBindingImpl) then) =
      __$$ApiBindingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String inLocation, String name});
}

/// @nodoc
class __$$ApiBindingImplCopyWithImpl<$Res>
    extends _$ApiBindingCopyWithImpl<$Res, _$ApiBindingImpl>
    implements _$$ApiBindingImplCopyWith<$Res> {
  __$$ApiBindingImplCopyWithImpl(
      _$ApiBindingImpl _value, $Res Function(_$ApiBindingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inLocation = null,
    Object? name = null,
  }) {
    return _then(_$ApiBindingImpl(
      inLocation: null == inLocation
          ? _value.inLocation
          : inLocation // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiBindingImpl implements _ApiBinding {
  const _$ApiBindingImpl({required this.inLocation, required this.name});

  factory _$ApiBindingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiBindingImplFromJson(json);

  @override
  final String inLocation;
  @override
  final String name;

  @override
  String toString() {
    return 'ApiBinding(inLocation: $inLocation, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiBindingImpl &&
            (identical(other.inLocation, inLocation) ||
                other.inLocation == inLocation) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, inLocation, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiBindingImplCopyWith<_$ApiBindingImpl> get copyWith =>
      __$$ApiBindingImplCopyWithImpl<_$ApiBindingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiBindingImplToJson(
      this,
    );
  }
}

abstract class _ApiBinding implements ApiBinding {
  const factory _ApiBinding(
      {required final String inLocation,
      required final String name}) = _$ApiBindingImpl;

  factory _ApiBinding.fromJson(Map<String, dynamic> json) =
      _$ApiBindingImpl.fromJson;

  @override
  String get inLocation;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ApiBindingImplCopyWith<_$ApiBindingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FormActions _$FormActionsFromJson(Map<String, dynamic> json) {
  return _FormActions.fromJson(json);
}

/// @nodoc
mixin _$FormActions {
  String get submit => throw _privateConstructorUsedError;
  String get reset => throw _privateConstructorUsedError;
  Map<String, dynamic>? get testRequest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormActionsCopyWith<FormActions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormActionsCopyWith<$Res> {
  factory $FormActionsCopyWith(
          FormActions value, $Res Function(FormActions) then) =
      _$FormActionsCopyWithImpl<$Res, FormActions>;
  @useResult
  $Res call({String submit, String reset, Map<String, dynamic>? testRequest});
}

/// @nodoc
class _$FormActionsCopyWithImpl<$Res, $Val extends FormActions>
    implements $FormActionsCopyWith<$Res> {
  _$FormActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submit = null,
    Object? reset = null,
    Object? testRequest = freezed,
  }) {
    return _then(_value.copyWith(
      submit: null == submit
          ? _value.submit
          : submit // ignore: cast_nullable_to_non_nullable
              as String,
      reset: null == reset
          ? _value.reset
          : reset // ignore: cast_nullable_to_non_nullable
              as String,
      testRequest: freezed == testRequest
          ? _value.testRequest
          : testRequest // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormActionsImplCopyWith<$Res>
    implements $FormActionsCopyWith<$Res> {
  factory _$$FormActionsImplCopyWith(
          _$FormActionsImpl value, $Res Function(_$FormActionsImpl) then) =
      __$$FormActionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String submit, String reset, Map<String, dynamic>? testRequest});
}

/// @nodoc
class __$$FormActionsImplCopyWithImpl<$Res>
    extends _$FormActionsCopyWithImpl<$Res, _$FormActionsImpl>
    implements _$$FormActionsImplCopyWith<$Res> {
  __$$FormActionsImplCopyWithImpl(
      _$FormActionsImpl _value, $Res Function(_$FormActionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submit = null,
    Object? reset = null,
    Object? testRequest = freezed,
  }) {
    return _then(_$FormActionsImpl(
      submit: null == submit
          ? _value.submit
          : submit // ignore: cast_nullable_to_non_nullable
              as String,
      reset: null == reset
          ? _value.reset
          : reset // ignore: cast_nullable_to_non_nullable
              as String,
      testRequest: freezed == testRequest
          ? _value._testRequest
          : testRequest // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormActionsImpl implements _FormActions {
  const _$FormActionsImpl(
      {required this.submit,
      required this.reset,
      final Map<String, dynamic>? testRequest})
      : _testRequest = testRequest;

  factory _$FormActionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormActionsImplFromJson(json);

  @override
  final String submit;
  @override
  final String reset;
  final Map<String, dynamic>? _testRequest;
  @override
  Map<String, dynamic>? get testRequest {
    final value = _testRequest;
    if (value == null) return null;
    if (_testRequest is EqualUnmodifiableMapView) return _testRequest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'FormActions(submit: $submit, reset: $reset, testRequest: $testRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormActionsImpl &&
            (identical(other.submit, submit) || other.submit == submit) &&
            (identical(other.reset, reset) || other.reset == reset) &&
            const DeepCollectionEquality()
                .equals(other._testRequest, _testRequest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, submit, reset,
      const DeepCollectionEquality().hash(_testRequest));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormActionsImplCopyWith<_$FormActionsImpl> get copyWith =>
      __$$FormActionsImplCopyWithImpl<_$FormActionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormActionsImplToJson(
      this,
    );
  }
}

abstract class _FormActions implements FormActions {
  const factory _FormActions(
      {required final String submit,
      required final String reset,
      final Map<String, dynamic>? testRequest}) = _$FormActionsImpl;

  factory _FormActions.fromJson(Map<String, dynamic> json) =
      _$FormActionsImpl.fromJson;

  @override
  String get submit;
  @override
  String get reset;
  @override
  Map<String, dynamic>? get testRequest;
  @override
  @JsonKey(ignore: true)
  _$$FormActionsImplCopyWith<_$FormActionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
