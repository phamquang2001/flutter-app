import 'package:flutter_application_1/controllers/treatment_place.controller.dart';
import 'package:get/get.dart';

class TreatmentPlaceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TreatmentPlaceController>(() => TreatmentPlaceController());
  }
}
