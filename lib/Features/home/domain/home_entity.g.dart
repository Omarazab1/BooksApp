// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HomeEntityAdapter extends TypeAdapter<HomeEntity> {
  @override
  final int typeId = 0;

  @override
  HomeEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HomeEntity(
      image: fields[0] as String?,
      title: fields[1] as String,
      authorName: fields[2] as String?,
      bookId: fields[3] as String,
      rating: fields[4] as num?,
      price: fields[5] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, HomeEntity obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.image)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.authorName)
      ..writeByte(3)
      ..write(obj.bookId)
      ..writeByte(4)
      ..write(obj.rating)
      ..writeByte(5)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
