import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'form_field_schema.g.dart';

@JsonSerializable(explicitToJson: true)
class FormFieldSchema extends Equatable {
  final String name;
  final String label;
  final String fieldType;
  final bool required;
  final String? defaultValue;
  final bool allowExpression;
  final String? visibleIf;
  final List<FormFieldSchema>? children;
  final List<String>? enumValues;
  final String? group;

  const FormFieldSchema({
    required this.name,
    required this.label,
    this.fieldType = 'string',
    this.required = false,
    this.defaultValue,
    this.allowExpression = true,
    this.visibleIf,
    this.children,
    this.enumValues,
    this.group,
  });

  factory FormFieldSchema.fromJson(Map<String, dynamic> json) =>
      _$FormFieldSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$FormFieldSchemaToJson(this);

  @override
  List<Object?> get props => [
        name,
        label,
        fieldType,
        required,
        defaultValue,
        allowExpression,
        visibleIf,
        children,
        enumValues,
        group,
      ];
}
