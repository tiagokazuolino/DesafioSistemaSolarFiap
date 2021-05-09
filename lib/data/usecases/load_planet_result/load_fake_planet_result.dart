import 'package:meta/meta.dart';
import 'package:fiap_solar_system/domain/entities/planet_result_entity.dart';

class LoadFakePlanetResult {
  final PlanetResultEntity result;
  final int delay;

  LoadFakePlanetResult({@required this.result,@required  this.delay});

  Future<PlanetResultEntity> loadByPlanets() async {
    Future.delayed(Duration(seconds: this.delay));
    return this.result;
  }
}