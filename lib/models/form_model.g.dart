// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FormModelImpl _$$FormModelImplFromJson(Map<String, dynamic> json) =>
    _$FormModelImpl(
      formId: json['formId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      sections: (json['sections'] as List<dynamic>)
          .map((e) => FormSection.fromJson(e as Map<String, dynamic>))
          .toList(),
      actions: FormActions.fromJson(json['actions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FormModelImplToJson(_$FormModelImpl instance) =>
    <String, dynamic>{
      'formId': instance.formId,
      'title': instance.title,
      'description': instance.description,
      'sections': instance.sections,
      'actions': instance.actions,
    };

_$FormSectionImpl _$$FormSectionImplFromJson(Map<String, dynamic> json) =>
    _$FormSectionImpl(
      title: json['title'] as String,
      fields: (json['fields'] as List<dynamic>)
          .map((e) => FormFieldModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FormSectionImplToJson(_$FormSectionImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'fields': instance.fields,
    };

_$FormFieldModelImpl _$$FormFieldModelImplFromJson(Map<String, dynamic> json) =>
    _$FormFieldModelImpl(
      id: json['id'] as String,
      type: $enumDecode(_$FieldTypeEnumMap, json['type']),
      label: json['label'] as String,
      helpText: json['helpText'] as String?,
      placeholder: json['placeholder'] as String?,
      defaultValue: json['defaultValue'],
      required: json['required'] as bool? ?? false,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => OptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      displayCondition: json['displayCondition'] == null
          ? null
          : DisplayCondition.fromJson(
              json['displayCondition'] as Map<String, dynamic>),
      validation: json['validation'] == null
          ? null
          : ValidationRule.fromJson(json['validation'] as Map<String, dynamic>),
      apiBinding: json['apiBinding'] == null
          ? null
          : ApiBinding.fromJson(json['apiBinding'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FormFieldModelImplToJson(
        _$FormFieldModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$FieldTypeEnumMap[instance.type]!,
      'label': instance.label,
      'helpText': instance.helpText,
      'placeholder': instance.placeholder,
      'defaultValue': instance.defaultValue,
      'required': instance.required,
      'options': instance.options,
      'displayCondition': instance.displayCondition,
      'validation': instance.validation,
      'apiBinding': instance.apiBinding,
    };

const _$FieldTypeEnumMap = {
  FieldType.string: 'string',
  FieldType.number: 'number',
  FieldType.boolean: 'boolean',
  FieldType.select: 'select',
  FieldType.multiselect: 'multiselect',
  FieldType.date: 'date',
  FieldType.json: 'json',
  FieldType.code: 'code',
};

_$OptionModelImpl _$$OptionModelImplFromJson(Map<String, dynamic> json) =>
    _$OptionModelImpl(
      label: json['label'] as String,
      value: json['value'],
    );

Map<String, dynamic> _$$OptionModelImplToJson(_$OptionModelImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'value': instance.value,
    };

_$DisplayConditionImpl _$$DisplayConditionImplFromJson(
        Map<String, dynamic> json) =>
    _$DisplayConditionImpl(
      field: json['field'] as String,
      operator: json['operator'] as String,
      value: json['value'],
    );

Map<String, dynamic> _$$DisplayConditionImplToJson(
        _$DisplayConditionImpl instance) =>
    <String, dynamic>{
      'field': instance.field,
      'operator': instance.operator,
      'value': instance.value,
    };

_$ValidationRuleImpl _$$ValidationRuleImplFromJson(Map<String, dynamic> json) =>
    _$ValidationRuleImpl(
      pattern: json['pattern'] as String?,
      custom: json['custom'] as String?,
      min: json['min'] as num?,
      max: json['max'] as num?,
    );

Map<String, dynamic> _$$ValidationRuleImplToJson(
        _$ValidationRuleImpl instance) =>
    <String, dynamic>{
      'pattern': instance.pattern,
      'custom': instance.custom,
      'min': instance.min,
      'max': instance.max,
    };

_$ApiBindingImpl _$$ApiBindingImplFromJson(Map<String, dynamic> json) =>
    _$ApiBindingImpl(
      inLocation: json['inLocation'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ApiBindingImplToJson(_$ApiBindingImpl instance) =>
    <String, dynamic>{
      'inLocation': instance.inLocation,
      'name': instance.name,
    };

_$FormActionsImpl _$$FormActionsImplFromJson(Map<String, dynamic> json) =>
    _$FormActionsImpl(
      submit: json['submit'] as String,
      reset: json['reset'] as String,
      testRequest: json['testRequest'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$FormActionsImplToJson(_$FormActionsImpl instance) =>
    <String, dynamic>{
      'submit': instance.submit,
      'reset': instance.reset,
      'testRequest': instance.testRequest,
    };
