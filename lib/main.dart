import 'package:flutter/material.dart';
import 'package:flutter_getx_demo_yt/screens/second_screen.dart';
import 'package:flutter_getx_demo_yt/screens/third_screen.dart';
import 'package:get/get.dart';
import '../screens/homescreen.dart';

void main() {
  runApp(GetMaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => HomeScreen()),
      GetPage(name: '/secondscreen', page: () => SecondScreen()),
      GetPage(name: '/thirdScreen', page: () => ThirdScreen()),
    ],
    debugShowCheckedModeBanner: false,
  ));
}
