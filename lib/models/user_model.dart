// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dietdemo/models/vki_model.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 1)
class UserModel extends Equatable {
  @HiveField(0)
  final String? username;
  @HiveField(1)
  final String? email;
  @HiveField(2)
  final int? age;
  @HiveField(3)
  final String? gender;
  @HiveField(4)
  final double? weight;
  @HiveField(5)
  final double? height;
  @HiveField(6)
  final List<VKIModel>? vki;
  
  const UserModel({
    this.username,
    this.email,
    this.age,
    this.gender,
    this.weight,
    this.height,
    this.vki,
  });

  @override
  List<Object?> get props => [
        username,
        email,
        age,
        gender,
        weight,
        height,
        vki,
      ];
}
