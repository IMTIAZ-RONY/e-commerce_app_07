import 'package:get/get.dart';

import '../features/common/ui/controllers/main_bottom_nav_controller.dart';

///full app controller for this use class
class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(MainBottomNavController());
  }
}