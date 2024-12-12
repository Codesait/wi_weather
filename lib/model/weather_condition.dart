class Condition {

  Condition({this.text, this.icon, this.code});

  Condition.fromJson(Map<String, dynamic> json) {
    text = json['text'] as String?;
    icon = json['icon'] as String?;
    code = json['code'] as int?;
  }
  String? text;
  String? icon;
  int? code;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['text'] = text;
    data['icon'] = icon;
    data['code'] = code;
    return data;
  }
}
