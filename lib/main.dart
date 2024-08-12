import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:getx_state_management/Page_Navigation/View/FirstScreen.dart';
import 'package:getx_state_management/Page_Navigation/View/SecondScreen.dart';

import 'Counter_App/View/CounterApp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        //GetPage(name: '/', page: () => CounterApp(),),
         GetPage(name: '/', page: () => Firstscreen(),transition: Transition.rightToLeft),
        GetPage(name: '/second', page: () => Secondscreen(),transition: Transition.leftToRight),
      ],

    );
  }
}

