class InfoModel {
  String? title;
  String? content;

  InfoModel({this.title, this.content});

  factory InfoModel.fromJson(Map<String, dynamic> json) => InfoModel(
        title: json['title'] as String?,
        content: json['content'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'content': content,
      };
}
