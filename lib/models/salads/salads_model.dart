class SaladsModel {
  String? title;
  String? content;
  String? malzemeler;
  String? image;
  String? pufnoktasi;
  String? tarifKismi;
  String? kalori;
  String? protein;
  String? fat;
  String? carbonhydrat;

  SaladsModel({
    this.title,
    this.content,
    this.malzemeler,
    this.image,
    this.pufnoktasi,
    this.tarifKismi,
    this.kalori,
    this.protein,
    this.fat,
    this.carbonhydrat,
  });

  factory SaladsModel.fromJson(Map<String, dynamic> json) => SaladsModel(
        title: json['title'] as String?,
        content: json['content'] as String?,
        malzemeler: json['malzemeler'] as String?,
        image: json['image'] as String?,
        pufnoktasi: json['pufnoktasi'] as String?,
        tarifKismi: json['tarif_kismi'] as String?,
        kalori: json['kalori'] as String?,
        protein: json['protein'] as String?,
        fat: json['fat'] as String?,
        carbonhydrat: json['carbonhydrat'] as String?,
      );
}
