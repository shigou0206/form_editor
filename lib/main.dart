// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'schema/form_field_schema.dart';
import 'schema/form_schema.dart';
// 引入 ParameterFormPanel 而不是 OptimizedCardRenderer
import 'renderer/parameter_form_panel.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parameter Form Panel Demo',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal)),
      home: const DemoPage(),
    );
  }
}

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});
  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  late FormSchema _schema;
  final Map<String, dynamic> _values = {};

  @override
  void initState() {
    super.initState();
    _schema = const FormSchema(fields: [
      FormFieldSchema(name: 'username', label: '用户名'),
      FormFieldSchema(name: 'age', label: '年龄', fieldType: 'number'),
      FormFieldSchema(name: 'enabled', label: '启用', fieldType: 'boolean'),
      FormFieldSchema(
        name: 'mode',
        label: '模式',
        fieldType: 'enumeration',
        enumValues: ['简单', '高级'],
        group: '高级设置',
      ),
      FormFieldSchema(
        name: 'options',
        label: '子选项',
        fieldType: 'object',
        group: '高级设置',
        children: [
          FormFieldSchema(name: 'opt1', label: '选项1'),
          FormFieldSchema(name: 'opt2', label: '选项2'),
        ],
      ),
    ]);
  }

  void _onFieldChanged(String path, dynamic value) {
    setState(() => _values[path] = value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('参数面板示例')),
      body: ParameterFormPanel(
        schema: _schema,
        onChanged: _onFieldChanged,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12),
        child: Text('Values: ${_values.toString()}'),
      ),
    );
  }
}
