import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class EmployeeList extends GetView<EmployeeListController> {
  const EmployeeList({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee List"),
      ),
      body: Column(
        children: [
          GetBuilder<EmployeeListController>(
            builder: (context) {
              return controller.list.isEmpty ? CircularProgressIndicator() : Expanded(
                child: ListView.builder(
                  itemCount: controller.list.length,
                  itemBuilder: (context, index) {
                  return Text(controller.list[index].name.toString()); 
                  }
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}