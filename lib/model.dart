import 'dart:convert';

List<DemoModel> demoModelFromJson(String str) =>
    List<DemoModel>.from(json.decode(str).map((x) => DemoModel.fromJson(x)));

String demoModelToJson(List<DemoModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DemoModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  DemoModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory DemoModel.fromJson(Map<String, dynamic> json) => DemoModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
