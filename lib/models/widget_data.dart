import 'child_data.dart';

class WidgetData {
  final String type;
  final List<ChildData> children;

  WidgetData({required this.type, required this.children});

  factory WidgetData.fromJson(Map<String, dynamic> json) {
    return WidgetData(
      type: json['type'],
      children: List<ChildData>.from(
        (json['children'] as List).map(
          (childJson) => ChildData.fromJson(childJson),
        ),
      ),
    );
  }
}
