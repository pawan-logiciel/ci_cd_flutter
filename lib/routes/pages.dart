import 'package:ci_cd_flutter/modules/employees/detail/binding.dart';
import 'package:ci_cd_flutter/modules/employees/detail/view_employee.dart';
import 'package:ci_cd_flutter/modules/employees/form/add_edit_employee.dart';
import 'package:ci_cd_flutter/modules/employees/form/binding.dart';
import 'package:ci_cd_flutter/modules/employees/listing/binding.dart';
import 'package:ci_cd_flutter/modules/employees/listing/index.dart';
import 'package:get/get.dart';
part './routes.dart';

abstract class AppPages {
  static final List<GetPage<dynamic>> pages = [
    GetPage(
      name: Routes.employeeForm,
      page: () => const AddEditEmployeeForm(),
      binding: AddEditEmployeeFormBinding(),
    ),
    GetPage(
      name: Routes.employeeList,
      page: () => const EmployeeList(),
      binding: EmployeeListBinding(),
    ),
    GetPage(
      name: Routes.employeeView,
      page: () => const ViewEmployee(),
      binding: ViewEmployeeBinding(),
    ),
  ];
}
