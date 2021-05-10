import 'package:fiap_solar_system/domain/entities/planet_entity.dart';
import 'package:fiap_solar_system/main/helpers/contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/components.dart';

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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: appPrimaryColor.withOpacity(0.25), // status bar color
    ));
    return Scaffold(
      body: Body(planet: planet),
    );
  }
}
