import 'package:get/get.dart';

import 'controllers/componentsControllers/bottom_navigation_bar_component_controller.dart';
import 'controllers/home_controller.dart';

class GetxBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => BottomNavigationBarComponentController());
  }
}