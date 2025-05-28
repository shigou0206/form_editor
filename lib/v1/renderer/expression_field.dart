// lib/renderer/expression_field.dart
import 'package:flutter/material.dart';

class ExpressionField extends StatefulWidget {
  final String initialText;
  final ValueChanged<String> onChanged;
  final bool allowExpression;

  const ExpressionField({
    super.key,
    this.initialText = '',
    required this.onChanged,
    this.allowExpression = true,
  });

  @override
  State<ExpressionField> createState() => _ExpressionFieldState();
}

class _ExpressionFieldState extends State<ExpressionField> {
  late bool _exprMode;
  late TextEditingController _ctrl;

  @override
  void initState() {
    super.initState();
    _exprMode = widget.initialText.contains('{{');
    _ctrl = TextEditingController(text: widget.initialText);
  }

  void _toggleMode() {
    setState(() => _exprMode = !_exprMode);
    final text = _ctrl.text;
    if (_exprMode) {
      _ctrl.text = text.contains('{{') ? text : '{{ $text }}';
    } else {
      _ctrl.text = text.replaceAll(RegExp(r'^\{\{\s*|\s*\}\}$'), '');
    }
    widget.onChanged(_ctrl.text);
  }

  @override
  Widget build(BuildContext context) {
    final icon = _exprMode ? Icons.code : Icons.text_fields;
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _ctrl,
            decoration: InputDecoration(
              hintText: _exprMode ? '{{ expression }}' : 'Constant',
            ),
            onChanged: widget.onChanged,
          ),
        ),
        if (widget.allowExpression)
          IconButton(
            icon: Icon(icon, size: 20),
            splashRadius: 20,
            tooltip: _exprMode ? 'Switch to constant' : 'Switch to expression',
            onPressed: _toggleMode,
          ),
      ],
    );
  }
}
