import 'package:fiap_solar_system/domain/entities/planet_entity.dart';
import 'package:fiap_solar_system/main/helpers/contants.dart';
import 'package:flutter/material.dart';

class DesciptionTextCard extends StatelessWidget {
  const DesciptionTextCard({
    Key key,
    @required this.planet,
  }) : super(key: key);

  final PlanetEntity planet;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: appDefaultPadding,
        vertical: appDefaultPadding / 2,
      ),
      child: Text(planet.description),
    );
  }
}
