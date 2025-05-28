import 'package:flutter/material.dart';
import '../../models/form_model.dart';
import '../../state_management/form_state.dart';

class JsonFieldWidget extends StatelessWidget {
  final FormFieldModel field;
  final DynamicFormState state;
  final FormNotifier notifier;

  const JsonFieldWidget({
    super.key,
    required this.field,
    required this.state,
    required this.notifier,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: state.values[field.id],
      maxLines: 5,
      decoration: InputDecoration(
        labelText: field.label,
        hintText: field.placeholder,
        helperText: field.helpText ?? '请输入有效的JSON格式数据',
        errorText: state.errors[field.id],
        border: const OutlineInputBorder(),
      ),
      onChanged: (val) => notifier.updateValue(field.id, val),
    );
  }
}
