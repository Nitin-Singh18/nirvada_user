import 'package:get/get.dart';

import '../modules/facial_recognition_screen/bindings/facial_recognition_screen_binding.dart';
import '../modules/facial_recognition_screen/views/facial_recognition_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/register_screen/bindings/register_screen_binding.dart';
import '../modules/register_screen/views/register_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_SCREEN,
      page: () => const RegisterScreenView(),
      binding: RegisterScreenBinding(),
    ),
    GetPage(
      name: _Paths.FACIAL_RECOGNITION_SCREEN,
      page: () => const FacialRecognitionScreenView(),
      binding: FacialRecognitionScreenBinding(),
    ),
  ];
}
