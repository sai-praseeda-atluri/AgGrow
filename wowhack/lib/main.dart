import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wowhack/crops/cucumber.dart';
import 'package:wowhack/crops/maize.dart';
import 'package:wowhack/crops/muskmelon.dart';
import 'package:wowhack/crops/mustard.dart';
import 'package:wowhack/crops/rice.dart';
import 'package:wowhack/crops/watermelon.dart';
import 'package:wowhack/crops/wheat.dart';
import 'package:wowhack/land.dart';
import 'package:wowhack/settings.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

import 'crops/barley.dart';
import 'crops/cotton.dart';
import 'firstpage.dart';
import 'crop.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: firstpage(),
      routes: {
        "crop" :  (context) =>mainpage(),
        "firstpage" : (context) => firstpage(),
        "landinfo"  : (context) =>land(),
        "settings"  : (context) =>settings(),
        "wheat" : (context)=> WheatPage(),
        "barley" : (context)=> BarleyPage(),
        "cotton" : (context)=> CottonPage(),
        "cucumber" :(context)=>CucumberPage(),
        "maize" : (context)=> MaizePage(),
        "muskmelon": (context)=>MuskmelonPage(),
        "mustard" : (context) => MustardPage(),
        "rice" : (context) => RicePage(),
        "watermelon" : (context)=> WatermelonPage(),
      },
    );
  }
}
