import 'package:firstoflinux/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    home: lol(),
  ));
}

class lol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(homecontroller());

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: MaterialButton(
                  onPressed: () {
                    print("hwllo");

                    Get.to(SecondPage());
                  },
                  child: Container(
                      height: 200,
                      width: 300,
                      child: Center(
                          child: Container(
                        child: TextField(
                            onSubmitted: (c) {
                              print(c);
                              controller.textfield.value = c;
                            },
                            onChanged: (v) {}),
                      )))),
            ),
            InkWell(
                onTap: () {
                  Get.to(SecondPage());
                },
                child: Text("submit")),
            Align(
                alignment: Alignment.bottomCenter,
                child: Obx(() => Text(controller.textfield.value)))
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(homecontroller());

    return Scaffold(
      body: Center(
        child: InkWell(onTap: () {}, child: Text(controller.textfield.value)),
      ),
    );
  }
}
