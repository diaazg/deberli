import 'package:flutter/material.dart';
import 'Screens/firstPages/splashScreen.dart';
import 'package:swo/Screens/Restaurant/RestaurantHome.dart';
import 'package:swo/Screens/Restaurant/ResProfile.dart';
import 'package:swo/Screens/farmer/Home.dart';
import 'package:swo/Screens/farmer/commandInfo.dart';
import 'package:swo/Screens/livreur/livreurReg.dart';
import 'package:swo/Screens/livreur/livreurLogin.dart';
import 'package:swo/Screens/livreur/offer.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:offer()
    );
  }
}


