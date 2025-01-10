import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:post/services/approute.dart';
import 'helper/prefs_helper.dart';

class HomeController extends GetxController {
  final emailController = TextEditingController().obs();
  final passwordController = TextEditingController().obs();
  final userNameController = TextEditingController().obs();
  final logInEmailController = TextEditingController().obs();
  final logInPasswordController = TextEditingController().obs();

  signIn() async {
    Map<String, String> body = {
      "userName" : userNameController.value.text,
      "email": emailController.value.text,
      "password": passwordController.value.text,
    };
    try {
      final response = await http.post(
        Uri.parse("https://lunatix-backend.vercel.app/api/v1/users/create"),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(body),
      );

      debugPrint("$body");
      debugPrint('${response.statusCode}');
      debugPrint(response.body);

      var data = jsonDecode(response.body);
      if (response.statusCode == 201) {
        debugPrint("Response Data: $data");

        Get.toNamed(Approutes.loginScreen);
      } else {
        debugPrint("Error: ${data['error']}");
        // await SharePrefsHelper.remove(SharedPreferenceValue.token);
        Get.toNamed(Approutes.singUPScreen);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
  logIn() async {
    Map<String, String> body = {
      "email": logInEmailController.value.text,
      "password": logInPasswordController.value.text,
    };

    try {
      final response = await http.post(
        Uri.parse("https://lunatix-backend.vercel.app/api/v1/auth/login"),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(body),
      );
      debugPrint("$body");
      debugPrint('${response.statusCode}');
      debugPrint(response.body);

      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        // String token = data['token'];
        String accessToken = data['result']['accessToken'];
        await SharePrefsHelper.setString(SharedPreferenceValue.token, accessToken);
        debugPrint("Save Token: $accessToken");
        Get.toNamed(Approutes.detailsScreen);
      } else {
        debugPrint("Error: ${data['error']}");
        await SharePrefsHelper.remove(SharedPreferenceValue.token);
      }
    } catch (e) {
      debugPrint("Error: ${e.toString()}");
    }
  }
}
