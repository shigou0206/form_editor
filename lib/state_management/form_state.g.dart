// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicFormStateImpl _$$DynamicFormStateImplFromJson(
        Map<String, dynamic> json) =>
    _$DynamicFormStateImpl(
      values: json['values'] as Map<String, dynamic>,
      errors: Map<String, String?>.from(json['errors'] as Map),
    );

Map<String, dynamic> _$$DynamicFormStateImplToJson(
        _$DynamicFormStateImpl instance) =>
    <String, dynamic>{
      'values': instance.values,
      'errors': instance.errors,
    };
