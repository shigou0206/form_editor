// lib/renderer/card_form_renderer.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../schema/form_field_schema.dart';
import '../schema/form_schema.dart';
import 'expression_field.dart';

class CardFormRenderer extends ConsumerWidget {
  final FormSchema schema;
  final void Function(String, dynamic) onChanged;
  const CardFormRenderer(
      {super.key, required this.schema, required this.onChanged});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemCount: schema.fields.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (c, i) => _FieldCard(
        field: schema.fields[i],
        path: schema.fields[i].name,
        onChanged: onChanged,
      ),
    );
  }
}

class _FieldCard extends StatelessWidget {
  final FormFieldSchema field;
  final String path;
  final void Function(String, dynamic) onChanged;
  const _FieldCard(
      {required this.field, required this.path, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: _buildContent(context),
      ),
    );
  }

  Widget _buildContent(BuildContext ctx) {
    final style = ctx.theme.textTheme.titleMedium;
    switch (field.fieldType) {
      case 'boolean':
        return SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(field.label, style: style),
          value: field.defaultValue?.toLowerCase() == 'true',
          onChanged: (v) => onChanged(path, v),
        );
      case 'enumeration':
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(field.label, style: style),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              isDense: true,
              value: field.defaultValue ?? field.enumValues?.first,
              items: field.enumValues!
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (v) => onChanged(path, v),
            ),
          ],
        );
      case 'object':
        return ExpansionTile(
          tilePadding: EdgeInsets.zero,
          title: Text(field.label, style: style),
          children: field.children!
              .map((c) => Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: _FieldCard(
                      field: c,
                      path: '$path.${c.name}',
                      onChanged: onChanged,
                    ),
                  ))
              .toList(),
        );
      default:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(field.label, style: style),
            const SizedBox(height: 8),
            ExpressionField(
              initialText: field.defaultValue ?? '',
              onChanged: (v) => onChanged(path, v),
            ),
          ],
        );
    }
  }
}

extension on BuildContext {
  ThemeData get theme => Theme.of(this);
}
