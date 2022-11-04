import 'package:flutter/material.dart';
import 'package:flutter_getx_demo_yt/controller/countercontrol.dart';
import 'package:flutter_getx_demo_yt/screens/homescreen.dart';
import 'package:flutter_getx_demo_yt/screens/second_screen.dart';
import 'package:get/get.dart';

class ThirdScreen extends StatelessWidget {
  ThirdScreen({Key? key}) : super(key: key);
  final CounterController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Counter value from 1st screen"),
            Text(
              "${controller.count}",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 40,
              ),
            ),
            ElevatedButton(
                onPressed: () => Get.offAll(SecondScreen()),
                child: Text("Go to 2nd screen")),
            ElevatedButton(
                onPressed: () => Get.to(() => HomeScreen()),
                child: Text("Go to 1st screen")),
          ],
        ),
      ),
    );
  }
}
