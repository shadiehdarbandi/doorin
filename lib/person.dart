import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
part 'person.g.dart';

@HiveType(typeId: 3)
class person extends HiveObject {
  person(
      {required this.name,
      required this.shomare,
      required this.astin,
      required this.doreazoo,
      required this.dorsine,
      required this.ghad,
      required this.sarshane,
      required this.balatane,
      required this.zirpirahan,
      required this.shalvar,
      required this.sokhme,
      required this.toozihat,
      required this.dorebasan});
  @HiveField(1, defaultValue: ' ')
  String name;
  @HiveField(2, defaultValue: ' ')
  String shomare;
  @HiveField(3, defaultValue: ' ')
  String ghad;
  @HiveField(4, defaultValue: ' ')
  String dorsine;
  @HiveField(5, defaultValue: ' ')
  String dorebasan;
  @HiveField(6, defaultValue: ' ')
  String sarshane;
  @HiveField(7, defaultValue: ' ')
  String doreazoo;
  @HiveField(8, defaultValue: ' ')
  String astin;
  @HiveField(9, defaultValue: ' ')
  String balatane;
  @HiveField(10, defaultValue: ' ')
  String sokhme;
  @HiveField(11, defaultValue: ' ')
  String shalvar;
  @HiveField(12, defaultValue: ' ')
  String zirpirahan;
  @HiveField(13, defaultValue: ' ')
  String toozihat;
}
