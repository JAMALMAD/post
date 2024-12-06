import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;

import 'helper/prefs_helper.dart';

class HomeController extends GetxController{
  final emailController = TextEditingController().obs();
  final passwordController = TextEditingController().obs();
  signIn()async{
    Map<String,String> body = {
      "email":emailController.value.text,
      "password":emailController.value.text,
    };
    try {
      var response = await http.post(Uri.parse("https://reqres.in/api/login"),body: jsonEncode(body),);
      print("process");

      var data = jsonDecode(response.body);
      if(response.statusCode == 200){
        debugPrint("================================body $data");
        // SharePrefsHelper.setString("token", )
      }else{

        debugPrint("=============================error===body $data");
      }
    } catch (e) {
      print(e.toString());

    }
  }
//  void fetchData()async{
//  // final response = await http.post(url)post()
//  }
}