class BlueFruitsModel {
  String? title;
  String? content;
  String? image;

  BlueFruitsModel({this.title, this.content, this.image});

  factory BlueFruitsModel.fromJson(Map<String, dynamic> json) {
    return BlueFruitsModel(
      title: json['title'] as String?,
      content: json['content'] as String?,
      image: json['image'] as String?,
    );
  }
}
