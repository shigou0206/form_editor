// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_field_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FormFieldSchema _$FormFieldSchemaFromJson(Map<String, dynamic> json) =>
    FormFieldSchema(
      name: json['name'] as String,
      label: json['label'] as String,
      fieldType: json['fieldType'] as String? ?? 'string',
      required: json['required'] as bool? ?? false,
      defaultValue: json['defaultValue'] as String?,
      allowExpression: json['allowExpression'] as bool? ?? true,
      visibleIf: json['visibleIf'] as String?,
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => FormFieldSchema.fromJson(e as Map<String, dynamic>))
          .toList(),
      enumValues: (json['enumValues'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      group: json['group'] as String?,
    );

Map<String, dynamic> _$FormFieldSchemaToJson(FormFieldSchema instance) =>
    <String, dynamic>{
      'name': instance.name,
      'label': instance.label,
      'fieldType': instance.fieldType,
      'required': instance.required,
      'defaultValue': instance.defaultValue,
      'allowExpression': instance.allowExpression,
      'visibleIf': instance.visibleIf,
      'children': instance.children?.map((e) => e.toJson()).toList(),
      'enumValues': instance.enumValues,
      'group': instance.group,
    };
