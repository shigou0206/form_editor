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
      title: 'Flutter 动态表单集成示例',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FormIntegrationPage(),
    );
  }
}

class FormIntegrationPage extends ConsumerWidget {
  const FormIntegrationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 示例JSON表单定义（实际开发应从API动态获取）
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

    final formModel = FormModel.fromJson(jsonDecode(formJson));
    final formNotifier = ref.read(formProvider(formModel).notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(formModel.title),
      ),
      body: FormRenderer(formModel: formModel),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('提交并映射'),
        icon: const Icon(Icons.send),
        onPressed: () async {
          // 先验证表单
          if (formNotifier.validate()) {
            final apiService = ApiService(baseUrl: 'http://127.0.0.1:8000');

            final input = formNotifier.state.values;

            // 使用当前表单数据作为 input，并设置映射规则
            final mappings = [
              {"key": "username", "type": "jsonpath", "source": "\$.username"},
              {"key": "isAdult", "type": "cel", "transform": "input.age >= 18"}
            ];

            try {
              final result = await apiService.mapPreview(
                input: input,
                mappings: mappings,
              );

              // 显示返回的结果
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
        },
      ),
    );
  }
}
