import 'package:fiap_solar_system/data/model/planet_model.dart';
import 'package:fiap_solar_system/main/helpers/contants.dart';
import 'package:flutter/material.dart';

import 'package:fiap_solar_system/ui/screens/components/components.dart';
import './components.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBox(),
        CategoryList(),
        SizedBox(height: appDefaultPadding / 2),
        Expanded(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                  color: appBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              ListView.builder(
                itemCount: planets.length,
                itemBuilder: (context, index) => PlanetCard(
                  itemIndex: index,
                  planet: planets[index],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
