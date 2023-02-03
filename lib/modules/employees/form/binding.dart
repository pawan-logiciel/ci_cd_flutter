
import 'package:ci_cd_flutter/modules/employees/form/controller.dart';
import 'package:get/get.dart';

class AddEditEmployeeFormBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddEditEmployeeFormController>(() => AddEditEmployeeFormController());
  }
}