import 'package:fiap_solar_system/domain/entities/planet_entity.dart';

class PlanetModel {
  final int sizeOf;
  final String title, description, image, category;
  final List<String> detailsImages;
  PlanetModel({
    this.title,
    this.description,
    this.image,
    this.category,
    this.sizeOf,
    this.detailsImages,
  });

  PlanetEntity toEntity({int id}) => PlanetEntity(
        this.sizeOf,
        id: id,
        title: this.title,
        description: this.description,
        image: this.image,
        category: this.category,
        detailsImages: this.detailsImages,
      );
}

List<PlanetEntity> planets = [
  PlanetModel(
    title: 'Earth',
    description:
        'Earth is the third planet from the Sun and the only astronomical object known to harbor life. About 29.2% of Earth\'s surface is land consisting of continents and islands. The remaining 70.8% is covered with water, mostly by oceans, seas, gulfs, and other salt-water bodies, but also by lakes, rivers, and other fresh water, which together constitute the hydrosphere. Much of Earth\'s polar regions are covered in ice. Earth\'s outer layer is divided into several rigid tectonic plates that migrate across the surface over many millions of years, while its interior remains active with a solid iron inner core, a liquid outer core that generates Earth\'s magnetic field, and a convective mantle that drives plate tectonics.',
    image: 'lib/ui/assets/images/earth.png',
    detailsImages: ['lib/ui/assets/images/earth/69_earth_carousel_3.jpg'],
    category: 'Terrestrial Planets',
    sizeOf: 6371,
  ).toEntity(id: 1),
  PlanetModel(
    title: 'Jupiter',
    description:
        'Jupiter is the fifth planet from our Sun and is, by far, the largest planet in the solar system – more than twice as massive as all the other planets combined. \n\nJupiter’s stripes and swirls are actually cold, windy clouds of ammonia and water, floating in an atmosphere of hydrogen and helium. Jupiter’s iconic Great Red Spot is a giant storm bigger than Earth that has raged for hundreds of years.\n\nJupiter is surrounded by dozens of moons. Jupiter also has several rings, but unlike the famous rings of Saturn, Jupiter’s rings are very faint and made of dust, not ice.',
    image: 'lib/ui/assets/images/jupiter.png',
    detailsImages: ['lib/ui/assets/images/jupiter/11_stsci-h-p1936a_800.jpg'],
    category: 'Gas Giants',
    sizeOf: 69911,
  ).toEntity(id: 2),
  PlanetModel(
    title: 'Mars',
    description: 'lorem ipsum',
    image: 'lib/ui/assets/images/mars.png',
    detailsImages: ['lib/ui/assets/images/mars/78_mars_carousel_2.jpg'],
    category: 'Terrestrial Planets',
    sizeOf: 3389,
  ).toEntity(id: 3),
  PlanetModel(
    title: 'Mercury',
    description: 'lorem ipsum',
    image: 'lib/ui/assets/images/mercury.png',
    detailsImages: ['lib/ui/assets/images/mercury/74_mercury_carousel_2.jpg'],
    category: 'Terrestrial Planets',
    sizeOf: 2439,
  ).toEntity(id: 4),
  PlanetModel(
    title: 'Neptune',
    description: 'lorem ipsum',
    image: 'lib/ui/assets/images/neptune.png',
    detailsImages: ['lib/ui/assets/images/neptune/86_carousel_neptune_5.jpg'],
    category: 'Ice Giants',
    sizeOf: 24622,
  ).toEntity(id: 5),
  PlanetModel(
    title: 'Saturn',
    description: 'lorem ipsum',
    image: 'lib/ui/assets/images/saturn.png',
    detailsImages: ['lib/ui/assets/images/saturn/153_saturn_carousel_3.jpg'],
    category: 'Gas Giants',
    sizeOf: 58232,
  ).toEntity(id: 6),
  PlanetModel(
    title: 'Uranus',
    description: 'lorem ipsum',
    image: 'lib/ui/assets/images/uranus.png',
    detailsImages: ['lib/ui/assets/images/uranus/90_uranus_carousel_2.jpg'],
    category: 'Ice Giants',
    sizeOf: 25362,
  ).toEntity(id: 7),
  PlanetModel(
    title: 'Venus',
    description: 'lorem ipsum',
    image: 'lib/ui/assets/images/venus.png',
    detailsImages: ['lib/ui/assets/images/venus/144_venus_carousel_4.jpg'],
    category: 'Terrestrial Planets',
    sizeOf: 6051,
  ).toEntity(id: 8),
];
