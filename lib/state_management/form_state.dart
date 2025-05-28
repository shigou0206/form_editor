import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/form_model.dart';
import '../utils/validation_utils.dart'; // 新增导入工具函数

part 'form_state.freezed.dart';
part 'form_state.g.dart';

@freezed
class DynamicFormState with _$DynamicFormState {
  const factory DynamicFormState({
    required Map<String, dynamic> values,
    required Map<String, String?> errors,
  }) = _DynamicFormState;

  factory DynamicFormState.fromJson(Map<String, dynamic> json) =>
      _$DynamicFormStateFromJson(json);
}

class FormNotifier extends StateNotifier<DynamicFormState> {
  final FormModel formModel;

  FormNotifier(this.formModel)
      : super(DynamicFormState(
          values: {
            for (var section in formModel.sections)
              for (var field in section.fields) field.id: field.defaultValue
          },
          errors: {},
        ));

  void updateValue(String fieldId, dynamic value) {
    state = state.copyWith(
      values: {...state.values, fieldId: value},
    );
  }

  bool validate() {
    final errors = <String, String?>{};

    for (var section in formModel.sections) {
      for (var field in section.fields) {
        final value = state.values[field.id];
        final error = ValidationUtils.validateField(field, value);

        if (error != null) {
          errors[field.id] = error;
        }
      }
    }

    state = state.copyWith(errors: errors);
    return errors.isEmpty;
  }
}

final formProvider =
    StateNotifierProvider.family<FormNotifier, DynamicFormState, FormModel>(
  (ref, formModel) => FormNotifier(formModel),
);
