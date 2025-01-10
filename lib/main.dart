import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/prefs_helper.dart';
import 'package:post/services/approute.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String token = await SharePrefsHelper.getString(SharedPreferenceValue.token);

  runApp(MyApp(token));
}

class MyApp extends StatelessWidget {
  final String token;

  const MyApp(this.token, {super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Your App',
      initialRoute: token.isEmpty ? Approutes.loginScreen : Approutes.detailsScreen,
      getPages: Approutes.routes,
    );
  }
}