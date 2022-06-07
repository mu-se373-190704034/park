import 'dart:math';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:park/Allpages/loginScreen.dart';
import 'Allpages/registerationScreen.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:gmap/models/place.dart';
import 'package:gmap/screens/search.dart';
import 'package:gmap/services/geolocator_service.dart';
import 'package:gmap/services/places_service.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  static const String idScreen = 'mainScreen';
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Parking Lots App',
      theme: ThemeData(
        fontFamily: 'Brand Bold',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
      initialRoute: loginScreen.idScreen,
      routes:{
        registerationScreen.idScreen:(context) => registerationScreen(),
        loginScreen.idScreen:(context) => loginScreen(),



      } ,
      debugShowCheckedModeBanner: false,
    );
  }
}
