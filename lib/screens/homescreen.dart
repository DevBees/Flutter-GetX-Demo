import 'package:flutter/material.dart';
import 'package:flutter_getx_demo_yt/controller/countercontrol.dart';
import 'package:flutter_getx_demo_yt/screens/second_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter GetX Demo"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "The counter value is:",
            style: TextStyle(
              color: Colors.purpleAccent,
              fontSize: 25,
            ),
          ),
          Obx(() => Text(
                "${controller.count}",
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepPurple,
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => controller.increment(),
                child: const Text("Add"),
              ),
              ElevatedButton(
                onPressed: () => controller.reset(),
                child: const Text("Reset"),
              ),
              ElevatedButton(
                onPressed: () => controller.decrement(),
                child: const Text("Subtract"),
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () => Get.showSnackbar(GetSnackBar(
                    title: "GetX Snackbar",
                    message: "This is a GetX SnackBar Demo",
                    duration: Duration(seconds: 2),
                    backgroundColor: Colors.purple.shade200,
                    barBlur: 5,
                  )),
              child: const Text("Show SnackBar")),
          ElevatedButton(
              onPressed: () => Get.defaultDialog(
                    title: "GetX Alert",
                    middleText: "This is a GetX alert dialog demo",
                    textCancel: "CANCEL",
                    cancelTextColor: Colors.deepPurple,
                    backgroundColor: Colors.white,
                  ),
              child: const Text("Show Alert")),
          ElevatedButton(
              onPressed: () => Get.toNamed("/secondscreen"),
              child: Text("Go to 2nd screen"))
        ],
      )),
    );
  }
}
