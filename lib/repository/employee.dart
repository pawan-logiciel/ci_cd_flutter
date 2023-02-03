import 'package:ci_cd_flutter/models/employee_model.dart';
import 'package:dio/dio.dart';

class EmployeeRepository {
  static Dio dio = Dio();
  static Future<List<EmployeeModel>> getEmployeeList() async {
    var response = await dio.get("https://63d89fe35a330a6ae16b0cf4.mockapi.io/api/v1/employee");
    List<EmployeeModel> listData = [];
    response.data.forEach((employee) {
      listData.add(EmployeeModel.fromJson(employee));
    });

    return listData;
  }
}