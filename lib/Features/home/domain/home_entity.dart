

import 'package:hive/hive.dart';

part 'home_entity.g.dart';
@HiveType(typeId: 0)
class HomeEntity {
  @HiveField(0)
  final String? image;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String? authorName;
  @HiveField(3)
  final String bookId;
  @HiveField(4)
  final num? rating;
  @HiveField(5)
  final num? price;

  HomeEntity({required this.image, required this.title, required this.authorName, required this.bookId, required this.rating, required this.price});


}