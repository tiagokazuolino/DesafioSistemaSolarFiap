import 'package:fiap_solar_system/main/helpers/contants.dart';
import 'package:fiap_solar_system/ui/screens/screens.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planet Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: appPrimaryColor,
        accentColor: appPrimaryColor,
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeScreen(),
        '/description': (context) => DescriptionScreen(),
        '/splash': (context) => SplashScreen(),
      },
    );
  }
}
