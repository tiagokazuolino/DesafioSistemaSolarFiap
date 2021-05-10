import 'package:fiap_solar_system/main/helpers/contants.dart';
import 'package:flutter/material.dart';

class IconImageCard extends StatelessWidget {
  const IconImageCard({
    Key key,
    this.image,
    this.title,
  }) : super(key: key);

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
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
          child: Image.asset(image, fit: BoxFit.contain),
        ),
        Text(
          title,
          style: TextStyle(
            color: appPrimaryColor,
          ),
        ),
      ],
    );
  }
}
