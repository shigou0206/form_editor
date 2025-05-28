// lib/renderer/optimized_card_renderer.dart
import 'package:flutter/material.dart';
import '../schema/form_schema.dart';
import '../schema/form_field_schema.dart';
import 'expression_field.dart';

class OptimizedCardRenderer extends StatefulWidget {
  final FormSchema schema;
  final void Function(String, dynamic) onChanged;
  const OptimizedCardRenderer({
    super.key,
    required this.schema,
    required this.onChanged,
  });

  @override
  State<OptimizedCardRenderer> createState() => _OptimizedCardRendererState();
}

class _OptimizedCardRendererState extends State<OptimizedCardRenderer> {
  final Map<String, bool> _groupOpen = {};

  @override
  Widget build(BuildContext context) {
    // Group fields by their `group` property
    final Map<String?, List<FormFieldSchema>> groups = {};
    for (var f in widget.schema.fields) {
      groups.putIfAbsent(f.group, () => []).add(f);
    }

    return LayoutBuilder(builder: (ctx, cons) {
      final cols = cons.maxWidth > 800 ? 2 : 1;
      return SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: groups.entries.map((entry) {
            final groupName = entry.key;
            final fields = entry.value;
            if (groupName == null) {
              // Ungrouped fields
              return _buildGrid(ctx, fields, cols);
            }
            // Grouped fields in ExpansionPanel
            final open = _groupOpen[groupName] ?? false;
            return ExpansionPanelList(
              expansionCallback: (_, isOpen) =>
                  setState(() => _groupOpen[groupName] = !isOpen),
              children: [
                ExpansionPanel(
                  headerBuilder: (_, __) => Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      groupName,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  body: _buildGrid(ctx, fields, cols),
                  isExpanded: open,
                  canTapOnHeader: true,
                ),
              ],
            );
          }).toList(),
        ),
      );
    });
  }

  Widget _buildGrid(BuildContext ctx, List<FormFieldSchema> fields, int cols) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: cols,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1.5,
      ),
      itemCount: fields.length,
      itemBuilder: (_, i) {
        final f = fields[i];
        return _FieldCard(
          field: f,
          path: f.name,
          onChanged: widget.onChanged,
        );
      },
    );
  }
}

class _FieldCard extends StatelessWidget {
  final FormFieldSchema field;
  final String path;
  final void Function(String, dynamic) onChanged;
  const _FieldCard({
    required this.field,
    required this.path,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.titleSmall;
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: _buildContent(context, style),
      ),
    );
  }

  Widget _buildContent(BuildContext ctx, TextStyle? style) {
    switch (field.fieldType) {
      case 'boolean':
        return SwitchListTile.adaptive(
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
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
          ],
        );

      case 'object':
        return ExpansionTile(
          tilePadding: EdgeInsets.zero,
          title: Text(field.label, style: style),
          children: field.children!
              .map((c) => Padding(
                    padding: const EdgeInsets.only(top: 8),
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
