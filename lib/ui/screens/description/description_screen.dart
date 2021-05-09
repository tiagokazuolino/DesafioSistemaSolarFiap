import 'package:fiap_solar_system/domain/entities/planet_entity.dart';
import 'package:fiap_solar_system/main/helpers/contants.dart';
import 'package:flutter/material.dart';

import 'components/planet_poster.dart';

class DescriptionScreen extends StatefulWidget {
  DescriptionScreen({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _DescriptionScreenState createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    PlanetEntity planet = ModalRoute.of(context).settings.arguments;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(planet.title),
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: appDefaultPadding),
                decoration: BoxDecoration(
                  color: appBackgroundColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Hero(
                        tag: '${planet.id}',
                        child: PlanetPoster(
                          size: size,
                          image: planet.image,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: appDefaultPadding / 2),
                      child: Text(
                        planet.title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    Text(
                      '\$${planet.sizeOf}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: appSecondaryColor,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: appDefaultPadding / 2),
                      child: Text(
                        planet.description,
                        style: TextStyle(color: appTextColor),
                      ),
                    ),
                    SizedBox(height: appDefaultPadding),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
