import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/form_model.dart';
import '../state_management/form_state.dart'; // 已经修改为 DynamicFormState
import 'fields/text_field_widget.dart';
import 'fields/number_field_widget.dart';
import 'fields/select_field_widget.dart';
import 'fields/json_field_widget.dart';

class FormRenderer extends ConsumerWidget {
  final FormModel formModel;

  const FormRenderer({super.key, required this.formModel});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dynamicFormState = ref.watch(formProvider(formModel));
    final notifier = ref.read(formProvider(formModel).notifier);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(formModel.title,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          ...formModel.sections.expand((section) => [
                Text(section.title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                ...section.fields.map(
                  (field) => _buildField(field, dynamicFormState, notifier),
                ),
                const SizedBox(height: 16),
              ]),
          ElevatedButton(
            onPressed: () {
              if (notifier.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('表单验证成功')),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('表单存在错误，请检查')),
                );
              }
            },
            child: Text(formModel.actions.submit),
          ),
        ],
      ),
    );
  }

  Widget _buildField(
      FormFieldModel field, DynamicFormState state, FormNotifier notifier) {
    switch (field.type) {
      case FieldType.string:
        return TextFieldWidget(field: field, state: state, notifier: notifier);
      case FieldType.number:
        return NumberFieldWidget(
            field: field, state: state, notifier: notifier);
      case FieldType.select:
        return SelectFieldWidget(
            field: field, state: state, notifier: notifier);
      case FieldType.json:
      case FieldType.code:
        return JsonFieldWidget(field: field, state: state, notifier: notifier);
      default:
        return const SizedBox.shrink();
    }
  }
}
