import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:post/login_screen.dart';
import 'package:post/services/detaisl_screen.dart';
import 'package:post/services/porget_password.dart';
import 'package:post/services/sing_up_screen.dart';

class Approutes{
  static const String loginScreen = "/loginScreen";
  static const String singUPScreen = "/singUPScreen";
  static const String detailsScreen = "/detailsScreen";
  static const String porgetPasswordScreen = "/porgetPasswordScreen";
  static List<GetPage> routes = [
    GetPage(name: loginScreen, page: ()=> LoginScreen()),
    GetPage(name: singUPScreen, page: ()=> SingUpScreen()),
    GetPage(name: detailsScreen, page: () => DetaislScreen()),
    GetPage(name: porgetPasswordScreen, page: () => PorgetPassword()),
  ];
}