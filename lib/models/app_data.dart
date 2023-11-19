class AppData {
  final String theme;
  final List<WidgetData> widgets;

  AppData({required this.theme, required this.widgets});

  factory AppData.fromJson(Map<String, dynamic> json) {
    return AppData(
      theme: json['app']['theme'],
      widgets: List<WidgetData>.from(
        (json['widgets'] as List).map(
          (widgetJson) => WidgetData.fromJson(widgetJson),
        ),
      ),
    );
  }
}

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

class ChildData {
  final String icon;
  final String companyName;
  final String current;
  final String prevClose;

  ChildData({
    required this.icon,
    required this.companyName,
    required this.current,
    required this.prevClose,
  });

  factory ChildData.fromJson(Map<String, dynamic> json) {
    return ChildData(
      icon: json['icon'],
      companyName: json['company_name'],
      current: json['current'],
      prevClose: json['prev_close'],
    );
  }
}
