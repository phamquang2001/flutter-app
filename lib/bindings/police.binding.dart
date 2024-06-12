import 'package:flutter_application_1/controllers/police.controller.dart';
import 'package:get/get.dart';

class PoliceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PoliceController>(() => PoliceController());
  }
}
