import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            // Container(
            //   height: 40,
            //   width: 100,
            //   color: Colors.green,
            //   child: Text("Log In"),
            // ),
            ElevatedButton(onPressed: (){
              print("============================");
              controller.signIn();
            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
