import 'package:flutter/material.dart';
import 'package:flutter_getx_demo_yt/screens/third_screen.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("You have reached 2nd screen"),
            ElevatedButton(
                onPressed: () => Get.back(), child: Text("Go to 1st screen")),
            ElevatedButton(
                onPressed: () => Get.to(() => ThirdScreen()),
                child: Text("Go to 3rd screen")),
          ],
        ),
      ),
    );
  }
}
