import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/police/police_entity.dart';
import 'package:flutter_application_1/models/police/search_police.dart';
import 'package:flutter_application_1/services/police.service.dart';
import 'package:get/get.dart';

class PoliceController extends GetxController {
  var selectedLevel = Rxn<int>();
  var selectedRole = Rxn<int>();
  var selectedCity = Rxn<int>();
  var selectedDistrict = Rxn<int>();
  var selectedWard = Rxn<int>();
  var listData = <PoliceEntity>[].obs;
  TextEditingController identifyNumberController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();

  Future<void> fetchData() async {
    try {
      List<PoliceEntity> data = await PoliceService.getAll(SearchPolice(
        role: selectedRole.value,
        cityId: selectedCity.value,
        wardId: selectedWard.value,
        districtId: selectedDistrict.value,
        level: selectedLevel.value,
        fullName: fullNameController.text,
        identifyNumber: identifyNumberController.text,
      ));

      listData.value = data;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void setLevel(int? value) {
    selectedLevel.value = value;
  }

  void setRole(int? value) {
    selectedRole.value = value;
  }

  void setCity(int? value) {
    selectedCity.value = value;
  }

  void setDistrict(int? value) {
    selectedDistrict.value = value;
  }

  void setWard(int? value) {
    selectedWard.value = value;
  }

  @override
  void onInit() {
    fetchData();

    super.onInit();
  }

  @override
  void onClose() {
    identifyNumberController.dispose();
    fullNameController.dispose();

    super.onClose();
  }
}
