import 'package:ci_cd_flutter/models/employee_model.dart';
import 'package:ci_cd_flutter/repository/employee.dart';
import 'package:get/get.dart';

class EmployeeListController extends GetxController  {
  List<EmployeeModel> list = [];

  getAllData() async {
    list = await EmployeeRepository.getEmployeeList();
    update();
    print(list);
  }

  @override
  void onInit() {
    print("init");
    super.onInit();
    getAllData();
  }
}