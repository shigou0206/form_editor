import 'package:flutter/material.dart';
import '../../models/form_model.dart';
import '../../state_management/form_state.dart';

class SelectFieldWidget extends StatelessWidget {
  final FormFieldModel field;
  final DynamicFormState state;
  final FormNotifier notifier;

  const SelectFieldWidget({
    super.key,
    required this.field,
    required this.state,
    required this.notifier,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: state.values[field.id],
      decoration: InputDecoration(
        labelText: field.label,
        errorText: state.errors[field.id],
      ),
      items: field.options!
          .map((opt) => DropdownMenuItem(
                value: opt.value,
                child: Text(opt.label),
              ))
          .toList(),
      onChanged: (val) => notifier.updateValue(field.id, val),
    );
  }
}
