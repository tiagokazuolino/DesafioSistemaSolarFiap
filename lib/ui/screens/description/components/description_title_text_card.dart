import 'package:fiap_solar_system/domain/entities/planet_entity.dart';
import 'package:fiap_solar_system/main/helpers/contants.dart';
import 'package:flutter/material.dart';

class TitleTextCard extends StatelessWidget {
  const TitleTextCard({
    Key key,
    @required this.planet,
  }) : super(key: key);

  final PlanetEntity planet;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: appDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "${planet.title}\n",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: appBlueColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: planet.category,
                  style: TextStyle(
                    fontSize: 16,
                    color: appSecondaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
