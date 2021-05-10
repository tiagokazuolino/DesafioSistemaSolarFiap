import 'package:fiap_solar_system/domain/entities/planet_entity.dart';
import 'package:fiap_solar_system/main/helpers/contants.dart';
import 'package:flutter/material.dart';

import 'components.dart';

class Body extends StatelessWidget {
  final PlanetEntity planet;

  const Body({Key key, this.planet}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIconsCard(size: size, planet: planet),
          TitleTextCard(planet: planet),
          DesciptionTextCard(planet: planet),
          Row(
            children: [
              Container(
                color: appPrimaryColor,
                child: SizedBox(
                  width: size.width / 2,
                  height: 44,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Return",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
