class HealtyFruitsModel {
  String? title;
  String? content;
  String? image;
  String? kalori;
  String? protein;
  String? sugar;
  String? fat;
  String? carbonhydrat;

  HealtyFruitsModel({
    this.title,
    this.content,
    this.image,
    this.kalori,
    this.protein,
    this.sugar,
    this.fat,
    this.carbonhydrat,
  });

  factory HealtyFruitsModel.fromJson(Map<String, dynamic> json) {
    return HealtyFruitsModel(
      title: json['title'] as String?,
      content: json['content'] as String?,
      image: json['image'] as String?,
      kalori: json['kalori'] as String?,
      protein: json['protein'] as String?,
      sugar: json['sugar'] as String?,
      fat: json['fat'] as String?,
      carbonhydrat: json['carbonhydrat'] as String?,
    );
  }
}
