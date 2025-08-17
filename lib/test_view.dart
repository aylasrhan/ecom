import 'package:ecom_app/controller/test_controller.dart';
import 'package:ecom_app/core/class/handldataview.dart';
import 'package:ecom_app/core/class/statuesreq.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

//رح اعرض البيانات الموجودة بالكونترولر اللي جابا من الباك
class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(title: Text("test")),
      body: GetBuilder<TestController>(
        builder: (controller) {
          return HandlDataView(
            statusereq: controller.statusereq,
            widget: ListView.builder(
              itemBuilder: (context, i) {
                Text("${controller.data}");
              },
            ),
          );
        },
      ),
    );
  }
}
