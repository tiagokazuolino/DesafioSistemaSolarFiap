import 'package:meta/meta.dart';

class PlanetEntity {
  final int id, sizeOf;
  final String title, description, image, category;
  final List<String> detailsImages;

  PlanetEntity(
    this.sizeOf, {
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.image,
    @required this.detailsImages,
    @required this.category,
  });
}
