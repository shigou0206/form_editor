// lib/renderer/parameter_form_panel.dart
import 'package:flutter/material.dart';
import '../schema/form_schema.dart';
import '../schema/form_field_schema.dart';
import 'expression_field.dart';

class ParameterFormPanel extends StatefulWidget {
  final FormSchema schema;
  final void Function(String, dynamic) onChanged;
  const ParameterFormPanel({
    super.key,
    required this.schema,
    required this.onChanged,
  });

  @override
  State<ParameterFormPanel> createState() => _ParameterFormPanelState();
}

class _ParameterFormPanelState extends State<ParameterFormPanel> {
  final Map<String?, bool> _openGroups = {};

  @override
  Widget build(BuildContext context) {
    final groups = <String?, List<FormFieldSchema>>{};
    for (var f in widget.schema.fields) {
      groups.putIfAbsent(f.group, () => []).add(f);
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: ExpansionPanelList(
        elevation: 0,
        expandedHeaderPadding: EdgeInsets.zero,
        expansionCallback: (i, open) {
          final key = groups.keys.elementAt(i);
          setState(() => _openGroups[key] = !open);
        },
        children: groups.entries.map((entry) {
          final groupName = entry.key;
          final fields = entry.value;
          final isOpen = _openGroups[groupName] ?? true;
          return ExpansionPanel(
            canTapOnHeader: true,
            isExpanded: isOpen,
            headerBuilder: (_, __) => Container(
              width: double.infinity,
              color: const Color(0xFFEDE7F6),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Text(
                groupName ?? 'Basic',
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            body: _buildGroupBody(context, fields),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildGroupBody(BuildContext ctx, List<FormFieldSchema> fields) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        children: fields.map((f) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: _FieldRow(
              field: f,
              onChanged: widget.onChanged,
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _FieldRow extends StatelessWidget {
  final FormFieldSchema field;
  final void Function(String, dynamic) onChanged;
  const _FieldRow({
    required this.field,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    Widget control;
    switch (field.fieldType) {
      case 'boolean':
        control = Switch.adaptive(
          value: field.defaultValue?.toLowerCase() == 'true',
          onChanged: (v) => onChanged(field.name, v),
        );
        break;
      case 'enumeration':
        control = DropdownButtonFormField<String>(
          isDense: true,
          value: field.defaultValue ?? field.enumValues?.first,
          items: field.enumValues!
              .map((e) => DropdownMenuItem(value: e, child: Text(e)))
              .toList(),
          onChanged: (v) => onChanged(field.name, v),
        );
        break;
      case 'object':
        control = const Text('Object…');
        break;
      default:
        control = ExpressionField(
          initialText: field.defaultValue ?? '',
          onChanged: (v) => onChanged(field.name, v),
        );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(_iconForType(field.fieldType), size: 20, color: Colors.deepPurple),
        const SizedBox(width: 12),
        SizedBox(
          width: 120,
          child: Text(
            field.label,
            style: const TextStyle(fontSize: 14),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(child: control),
      ],
    );
  }

  IconData _iconForType(String type) {
    switch (type) {
      case 'boolean':
        return Icons.toggle_on;
      case 'enumeration':
        return Icons.arrow_drop_down_circle;
      case 'object':
        return Icons.folder;
      default:
        return Icons.text_fields;
    }
  }
}
