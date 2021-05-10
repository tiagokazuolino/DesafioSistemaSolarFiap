import 'package:fiap_solar_system/main/helpers/contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconSvgCard extends StatelessWidget {
  const IconSvgCard({
    Key key,
    this.image,
    this.title,
  }) : super(key: key);

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 62,
            width: 62,
            padding: EdgeInsets.symmetric(vertical: appDefaultPadding / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [appDefaultShadow],
            ),
            child: SvgPicture.asset(image, fit: BoxFit.contain),
          ),
          SizedBox(height: 5),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: appPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
