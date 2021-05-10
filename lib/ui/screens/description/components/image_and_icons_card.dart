import 'package:fiap_solar_system/domain/entities/planet_entity.dart';
import 'package:fiap_solar_system/main/helpers/contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import 'components.dart';

class ImageAndIconsCard extends StatelessWidget {
  const ImageAndIconsCard({
    Key key,
    @required this.size,
    @required this.planet,
  }) : super(key: key);

  final Size size;
  final PlanetEntity planet;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: appDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: appDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: appDefaultPadding),
                        icon: SvgPicture.asset(
                            'lib/ui/assets/icons/back_arrow.svg'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Spacer(),
                    IconImageCard(
                      image: planet.image,
                      title: planet.title,
                    ),
                    Spacer(),
                    IconSvgCard(
                      image: 'lib/ui/assets/icons/design tools.svg',
                      title: '${buildFormatPlanetSizeOf()} KM',
                    ),
                    Spacer(),
                    IconSvgCard(
                      image: 'lib/ui/assets/icons/documentation.svg',
                      title: planet.category,
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(65),
                  bottomLeft: Radius.circular(65),
                ),
                boxShadow: [appDefaultShadow],
                image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.cover,
                  image: AssetImage(planet.detailsImages[0]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  String buildFormatPlanetSizeOf() =>
      NumberFormat.currency(locale: "pt_BR", symbol: "", decimalDigits: 0)
          .format(planet.sizeOf);
}
