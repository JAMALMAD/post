import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post/home_controller.dart';
import 'package:post/services/sing_up_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Post API"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.logInEmailController,
              decoration:const InputDecoration(
                hintText: "Email",border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: controller.logInPasswordController,
              decoration: const InputDecoration(
                hintText: "Password",border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              controller.logIn();
            }, child: Text("Login")),
            ElevatedButton(onPressed: (){
              Get.to(()=>SingUpScreen());
            }, child: Text("SingUp"))
          ],
        ),
      ),
    );
  }
}
