// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vki_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VKIModelAdapter extends TypeAdapter<VKIModel> {
  @override
  final int typeId = 2;

  @override
  VKIModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VKIModel(
      date: fields[7] as DateTime?,
      value: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, VKIModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(7)
      ..write(obj.date)
      ..writeByte(8)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VKIModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
