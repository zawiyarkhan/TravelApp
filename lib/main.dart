// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:travel_app/pages/GabinJaba.dart';
import 'package:travel_app/pages/Malamjaba.dart';
import 'package:travel_app/pages/mahondand_lake.dart';
import 'package:travel_app/pages/register2.dart';
import 'package:travel_app/pages/splash_screen.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';

import 'package:flutter/services.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //    statusBarColor: Color(0xff82c7f5)
    // ));
    final controller = PageController(
      initialPage: 0
    );

    // final pages = [
    //   Splash(),
    //   MalamJaba(),
    //   GabinJaba(),
    //   Mahodand(),
    //   RegisterUser()
    // ];
    return GetMaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: PageView(
          controller: controller,
          reverse: false,
          children: const [
            Splash(),
            MalamJaba(),
            GabinJaba(),
            Mahodand(),
            RegisterUser()
          ],
        ),
      )
      
      
      // Builder(
      //   builder: (context) => 
      //     LiquidSwipe(
      //       pages: pages,
      //       slideIconWidget: Icon(
      //         Icons.arrow_back_ios_new,
      //         color: Colors.white,
      //         size: 30,
      //       ),
      //       positionSlideIcon: 0.6,
      //       fullTransitionValue: 700
      //     )
      // )
    );
  }
}

