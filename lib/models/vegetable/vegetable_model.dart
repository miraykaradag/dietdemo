class VegetableModel {
  String? title;
  String? content;
  String? image;
  String? kalori;
  String? protein;
  String? fat;
  String? carbonhydrat;
  String? lif;

  VegetableModel({
    this.title,
    this.content,
    this.image,
    this.kalori,
    this.protein,
    this.fat,
    this.carbonhydrat,
    this.lif,
  });

  factory VegetableModel.fromJson(Map<String, dynamic> json) {
    return VegetableModel(
      title: json['title'] as String?,
      content: json['content'] as String?,
      image: json['image'] as String?,
      kalori: json['kalori'] as String?,
      protein: json['protein'] as String?,
      fat: json['fat'] as String?,
      carbonhydrat: json['carbonhydrat'] as String?,
      lif: json['lif'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'content': content,
        'image': image,
        'kalori': kalori,
        'protein': protein,
        'fat': fat,
        'carbonhydrat': carbonhydrat,
        'lif': lif,
      };
}
