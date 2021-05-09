import 'package:fiap_solar_system/main/helpers/contants.dart';
import 'package:fiap_solar_system/ui/screens/home/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text('Dashboard'),
      centerTitle: false,
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            "lib/ui/assets/icons/notifications.svg",
            width: appDefaultPadding,
          ),
          onPressed: null,
        ),
      ],
    );
  }
}
