import '../models/form_model.dart';

class ValidationUtils {
  /// 验证单个字段，返回错误消息，若无错误则返回null
  static String? validateField(FormFieldModel field, dynamic value) {
    // 必填校验
    if (field.required && (value == null || value.toString().isEmpty)) {
      return '${field.label}不能为空';
    }

    // 正则表达式校验
    if (field.validation?.pattern != null && value is String) {
      final regex = RegExp(field.validation!.pattern!);
      if (!regex.hasMatch(value)) {
        return '${field.label}格式不正确';
      }
    }

    // 数字范围校验
    if (value is num) {
      final min = field.validation?.min;
      final max = field.validation?.max;

      if (min != null && value < min) {
        return '${field.label}不能小于$min';
      }
      if (max != null && value > max) {
        return '${field.label}不能大于$max';
      }
    }

    // 自定义校验逻辑（根据需求扩展）
    if (field.validation?.custom != null) {
      final customValidation = _customValidators[field.validation!.custom!];
      if (customValidation != null) {
        return customValidation(value);
      }
    }

    return null;
  }

  /// 可扩展的自定义校验函数集合
  static final Map<String, String? Function(dynamic)> _customValidators = {
    'isUrl': (value) {
      final regex = RegExp(r'^(http|https)://');
      if (value is String && !regex.hasMatch(value)) {
        return '必须是合法的URL地址';
      }
      return null;
    },
    // 可继续增加其他自定义规则
  };
}
