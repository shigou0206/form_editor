import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'models/form_model.dart';
import 'widgets/form_renderer.dart';
import 'services/api_service.dart';
import 'state_management/form_state.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '动态表单集成示例',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FormIntegrationPage(),
    );
  }
}

class FormIntegrationPage extends ConsumerStatefulWidget {
  const FormIntegrationPage({super.key});

  @override
  ConsumerState<FormIntegrationPage> createState() =>
      _FormIntegrationPageState();
}

class _FormIntegrationPageState extends ConsumerState<FormIntegrationPage> {
  late final FormModel formModel;
  late final FormNotifier formNotifier;

  // 用户选择的映射规则（模拟配置）
  final List<Map<String, dynamic>> availableMappings = [
    {
      "name": "用户基础映射",
      "mappings": [
        {"key": "username", "type": "jsonpath", "source": "\$.username"},
        {"key": "isAdult", "type": "cel", "transform": "input.age >= 18"}
      ]
    },
    {
      "name": "仅用户名映射",
      "mappings": [
        {"key": "username", "type": "jsonpath", "source": "\$.username"}
      ]
    },
    {
      "name": "仅年龄判断",
      "mappings": [
        {"key": "isAdult", "type": "cel", "transform": "input.age >= 18"}
      ]
    },
  ];

  int selectedMappingIndex = 0;

  @override
  void initState() {
    super.initState();
    const formJson = '''
    {
      "formId": "user_form",
      "title": "用户信息",
      "description": "填写用户信息以提交后端映射测试",
      "sections": [
        {
          "title": "基本信息",
          "fields": [
            {
              "id": "username",
              "type": "string",
              "label": "用户名",
              "required": true,
              "placeholder": "请输入用户名"
            },
            {
              "id": "age",
              "type": "number",
              "label": "年龄",
              "required": true,
              "placeholder": "请输入年龄",
              "validation": {"min": 1, "max": 120}
            }
          ]
        }
      ],
      "actions": {
        "submit": "提交",
        "reset": "重置"
      }
    }
    ''';

    formModel = FormModel.fromJson(jsonDecode(formJson));
    formNotifier = ref.read(formProvider(formModel).notifier);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(formModel.title),
      ),
      body: Column(
        children: [
          Expanded(child: FormRenderer(formModel: formModel)),
          const Divider(),
          _mappingSelector(), // 用户选择映射规则的组件
          const SizedBox(height: 16),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('提交并映射'),
        icon: const Icon(Icons.send),
        onPressed: submitForm,
      ),
    );
  }

  // 用户选择映射规则UI
  Widget _mappingSelector() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: DropdownButtonFormField<int>(
        decoration: const InputDecoration(
          labelText: '选择映射规则',
          border: OutlineInputBorder(),
        ),
        value: selectedMappingIndex,
        items: List.generate(
          availableMappings.length,
          (index) => DropdownMenuItem(
            value: index,
            child: Text(availableMappings[index]['name']),
          ),
        ),
        onChanged: (index) {
          setState(() {
            selectedMappingIndex = index!;
          });
        },
      ),
    );
  }

  Future<void> submitForm() async {
    if (formNotifier.validate()) {
      final apiService = ApiService(baseUrl: 'http://127.0.0.1:8000');
      final input = formNotifier.state.values;

      final mappings = availableMappings[selectedMappingIndex]['mappings'];

      try {
        final result = await apiService.mapPreview(
          input: input,
          mappings: mappings,
        );

        if (context.mounted) {
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: const Text('后端映射结果'),
              content: SingleChildScrollView(
                child: Text(jsonEncode(result['output'])),
              ),
              actions: [
                TextButton(
                  child: const Text('关闭'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          );
        }
      } catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('请求失败: $e')),
          );
        }
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('表单存在错误，请检查')),
      );
    }
  }
}
