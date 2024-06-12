import 'package:flutter_application_1/controllers/drug_addict.controller.dart';
import 'package:get/get.dart';

class DrugAddictBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DrugAddictController>(() => DrugAddictController());
  }
}
