import 'package:flutter/material.dart';
import '../../models/form_model.dart';
import '../../state_management/form_state.dart';

class NumberFieldWidget extends StatelessWidget {
  final FormFieldModel field;
  final DynamicFormState state;
  final FormNotifier notifier;

  const NumberFieldWidget({
    super.key,
    required this.field,
    required this.state,
    required this.notifier,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: state.values[field.id]?.toString(),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: field.label,
        hintText: field.placeholder,
        helperText: field.helpText,
        errorText: state.errors[field.id],
      ),
      onChanged: (val) => notifier.updateValue(field.id, num.tryParse(val)),
    );
  }
}
