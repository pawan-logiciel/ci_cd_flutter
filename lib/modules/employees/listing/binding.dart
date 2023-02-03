
import 'package:get/get.dart';

import 'controller.dart';

class EmployeeListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmployeeListController>(() => EmployeeListController());
  }
}