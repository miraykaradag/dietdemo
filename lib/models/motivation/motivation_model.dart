class MotivationModel {
  String? content;

  MotivationModel({this.content});

  factory MotivationModel.fromJson(Map<String, dynamic> json) {
    return MotivationModel(
      content: json['content'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'content': content,
      };
}
