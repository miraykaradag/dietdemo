class DietModel {
  String? title;
  String? content;
  String? breakfast;
  String? launch;
  String? dinner;
  String? image;

  DietModel({
    this.title,
    this.content,
    this.breakfast,
    this.launch,
    this.dinner,
    this.image,
  });

  factory DietModel.fromJson(Map<String, dynamic> json) => DietModel(
        title: json['title'] as String?,
        content: json['content'] as String?,
        breakfast: json['breakfast'] as String?,
        launch: json['launch'] as String?,
        dinner: json['dinner'] as String?,
        image: json['image'] as String?,
      );

}
