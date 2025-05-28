// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FormSchema _$FormSchemaFromJson(Map<String, dynamic> json) => FormSchema(
      fields: (json['fields'] as List<dynamic>)
          .map((e) => FormFieldSchema.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: json['category'] as String?,
      schemaVersion: json['schemaVersion'] as String? ?? '1.0.0',
    );

Map<String, dynamic> _$FormSchemaToJson(FormSchema instance) =>
    <String, dynamic>{
      'fields': instance.fields.map((e) => e.toJson()).toList(),
      'category': instance.category,
      'schemaVersion': instance.schemaVersion,
    };
