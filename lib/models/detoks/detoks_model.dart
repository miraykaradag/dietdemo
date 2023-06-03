class DetoksModel {
  String? title;
  String? content;
  String? malzemeler;
  String? image;
  String? pFnoktas;
  String? tarifKSm;
  String? kalori;
  String? protein;
  String? fat;
  String? carbonhydrat;

  DetoksModel({
    this.title,
    this.content,
    this.malzemeler,
    this.image,
    this.pFnoktas,
    this.tarifKSm,
    this.kalori,
    this.protein,
    this.fat,
    this.carbonhydrat,
  });

  factory DetoksModel.fromJson(Map<String, dynamic> json) => DetoksModel(
        title: json['title'] as String?,
        content: json['content'] as String?,
        malzemeler: json['malzemeler'] as String?,
        image: json['image'] as String?,
        pFnoktas: json['pufnoktasi'] as String?,
        tarifKSm: json['tarif_kismi'] as String?,
        kalori: json['kalori'] as String?,
        protein: json['protein'] as String?,
        fat: json['fat'] as String?,
        carbonhydrat: json['carbonhydrat'] as String?,
      );
}
