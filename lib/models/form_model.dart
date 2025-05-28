import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_model.freezed.dart';
part 'form_model.g.dart';

@freezed
class FormModel with _$FormModel {
  const factory FormModel({
    required String formId,
    required String title,
    required String description,
    required List<FormSection> sections,
    required FormActions actions,
  }) = _FormModel;

  factory FormModel.fromJson(Map<String, dynamic> json) =>
      _$FormModelFromJson(json);
}

@freezed
class FormSection with _$FormSection {
  const factory FormSection({
    required String title,
    required List<FormFieldModel> fields,
  }) = _FormSection;

  factory FormSection.fromJson(Map<String, dynamic> json) =>
      _$FormSectionFromJson(json);
}

@freezed
class FormFieldModel with _$FormFieldModel {
  const factory FormFieldModel({
    required String id,
    required FieldType type,
    required String label,
    String? helpText,
    String? placeholder,
    dynamic defaultValue,
    @Default(false) bool required,
    List<OptionModel>? options,
    DisplayCondition? displayCondition,
    ValidationRule? validation,
    ApiBinding? apiBinding,
  }) = _FormFieldModel;

  factory FormFieldModel.fromJson(Map<String, dynamic> json) =>
      _$FormFieldModelFromJson(json);
}

@freezed
class OptionModel with _$OptionModel {
  const factory OptionModel({
    required String label,
    required dynamic value,
  }) = _OptionModel;

  factory OptionModel.fromJson(Map<String, dynamic> json) =>
      _$OptionModelFromJson(json);
}

@freezed
class DisplayCondition with _$DisplayCondition {
  const factory DisplayCondition({
    required String field,
    required String operator,
    required dynamic value,
  }) = _DisplayCondition;

  factory DisplayCondition.fromJson(Map<String, dynamic> json) =>
      _$DisplayConditionFromJson(json);
}

@freezed
class ValidationRule with _$ValidationRule {
  const factory ValidationRule({
    String? pattern,
    String? custom,
    num? min,
    num? max,
  }) = _ValidationRule;

  factory ValidationRule.fromJson(Map<String, dynamic> json) =>
      _$ValidationRuleFromJson(json);
}

@freezed
class ApiBinding with _$ApiBinding {
  const factory ApiBinding({
    required String inLocation,
    required String name,
  }) = _ApiBinding;

  factory ApiBinding.fromJson(Map<String, dynamic> json) =>
      _$ApiBindingFromJson(json);
}

@freezed
class FormActions with _$FormActions {
  const factory FormActions({
    required String submit,
    required String reset,
    Map<String, dynamic>? testRequest,
  }) = _FormActions;

  factory FormActions.fromJson(Map<String, dynamic> json) =>
      _$FormActionsFromJson(json);
}

enum FieldType {
  @JsonValue('string')
  string,
  @JsonValue('number')
  number,
  @JsonValue('boolean')
  boolean,
  @JsonValue('select')
  select,
  @JsonValue('multiselect')
  multiselect,
  @JsonValue('date')
  date,
  @JsonValue('json')
  json,
  @JsonValue('code')
  code,
}
