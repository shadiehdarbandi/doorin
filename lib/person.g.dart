// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class personAdapter extends TypeAdapter<person> {
  @override
  final int typeId = 3;

  @override
  person read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return person(
      name: fields[1] as String,
      shomare: fields[2] as String,
      astin: fields[8] as String,
      doreazoo: fields[7] as String,
      dorsine: fields[4] as String,
      ghad: fields[3] as String,
      sarshane: fields[6] as String,
      balatane: fields[9] as String,
      zirpirahan: fields[12] as String,
      shalvar: fields[11] as String,
      sokhme: fields[10] as String,
      toozihat: fields[13] as String,
      dorebasan: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, person obj) {
    writer
      ..writeByte(13)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.shomare)
      ..writeByte(3)
      ..write(obj.ghad)
      ..writeByte(4)
      ..write(obj.dorsine)
      ..writeByte(5)
      ..write(obj.dorebasan)
      ..writeByte(6)
      ..write(obj.sarshane)
      ..writeByte(7)
      ..write(obj.doreazoo)
      ..writeByte(8)
      ..write(obj.astin)
      ..writeByte(9)
      ..write(obj.balatane)
      ..writeByte(10)
      ..write(obj.sokhme)
      ..writeByte(11)
      ..write(obj.shalvar)
      ..writeByte(12)
      ..write(obj.zirpirahan)
      ..writeByte(13)
      ..write(obj.toozihat);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is personAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
