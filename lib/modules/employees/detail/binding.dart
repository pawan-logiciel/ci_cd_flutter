
import 'package:get/get.dart';

import 'controller.dart';

class ViewEmployeeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewEmployeeController>(() => ViewEmployeeController());
  }
}