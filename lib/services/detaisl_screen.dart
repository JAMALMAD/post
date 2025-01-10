import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post/home_controller.dart';

class DetaislScreen extends StatelessWidget {
  const DetaislScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());
    return Scaffold(
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
                  homeController.logIn();
                }, child: const Text(" Print token")),
          ],
        ),
      ),
    );
  }
}
