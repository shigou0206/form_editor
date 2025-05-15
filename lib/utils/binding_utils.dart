/// 后续：解析 {{ }} / 处理 JSONPath
String stripBraces(String text) =>
    text.replaceAll(RegExp(r'^\{\{\s*|\s*\}\}$'), '');
