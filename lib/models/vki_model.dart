// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'vki_model.g.dart';

@HiveType(typeId: 2)
class VKIModel extends Equatable {
  @HiveField(7)
  final DateTime? date;
  @HiveField(8)
  final String? value;

  const VKIModel({
    this.date,
    this.value,
  });

  @override
  List<Object?> get props => [date, value];
}
