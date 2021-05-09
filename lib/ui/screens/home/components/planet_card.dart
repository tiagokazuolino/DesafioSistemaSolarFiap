import 'package:fiap_solar_system/domain/entities/planet_entity.dart';
import 'package:fiap_solar_system/main/helpers/contants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PlanetCard extends StatelessWidget {
  const PlanetCard({
    Key key,
    this.itemIndex,
    this.planet,
  }) : super(key: key);
  final int itemIndex;
  final PlanetEntity planet;
  final bool loading = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/description", arguments: planet);
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: appDefaultPadding * 0.5,
          vertical: appDefaultPadding / 2,
        ),
        // color: Colors.blueAccent,
        height: 160,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 136,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: appBlueColor,
                boxShadow: [appDefaultShadow],
              ),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: appDefaultPadding),
                height: 180,
                width: 200,
                child: Image.asset(
                  planet.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 0,
              child: Container(
                // color: Colors.amber,
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: appDefaultPadding),
                      child: Text(
                        '${planet.title}, ${planet.category}',
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: appDefaultPadding * 1.5,
                        vertical: appDefaultPadding / 4,
                      ),
                      decoration: BoxDecoration(
                        color: appSecondaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          topRight: Radius.circular(22),
                        ),
                      ),
                      child: Text(
                        '${buildFormatPlanetSizeOf()} KM',
                        style: Theme.of(context).textTheme.button,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String buildFormatPlanetSizeOf() =>
      NumberFormat.currency(locale: "pt_BR", symbol: "", decimalDigits: 0)
          .format(planet.sizeOf);
}
