import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post/home_controller.dart';
import 'package:post/services/approute.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Sing Up"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.userNameController,
              decoration:const InputDecoration(
                hintText: "User name",border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: controller.emailController,
              decoration:const InputDecoration(
                hintText: "Email",border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: controller.passwordController,
              decoration: const InputDecoration(
                hintText: "Password",border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              controller.signIn();
              // Get.to(Approutes.porgetPasswordScreen);
            }, child: Text("Sing up"))
          ],
        ),
      ),
    );
  }
}
