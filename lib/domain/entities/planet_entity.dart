import 'package:meta/meta.dart';

class PlanetEntity {
  final int id, sizeOf;
  final String title, description, image, category;

  PlanetEntity(
    this.sizeOf, {
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.image,
    @required this.category,
  });
}
