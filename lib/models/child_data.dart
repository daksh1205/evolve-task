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
