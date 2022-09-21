import 'package:flutter_clone_instagram/src/controller/bottom_nav_controller.dart';
import 'package:get/get.dart';

class InitBiding extends Bindings{

  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(BottomNavController(), permanent: true)
  }

}