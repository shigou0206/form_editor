import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'form_field_schema.dart';

part 'form_schema.g.dart';

@JsonSerializable(explicitToJson: true)
class FormSchema extends Equatable {
  final List<FormFieldSchema> fields;
  final String? category;
  @JsonKey(defaultValue: '1.0.0')
  final String schemaVersion;

  const FormSchema({
    required this.fields,
    this.category,
    this.schemaVersion = '1.0.0',
  });

  factory FormSchema.fromJson(Map<String, dynamic> json) =>
      _$FormSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$FormSchemaToJson(this);

  @override
  List<Object?> get props => [fields, category, schemaVersion];
}
