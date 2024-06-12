import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/drug_addict/drug_addict_entity.dart';
import 'package:flutter_application_1/models/drug_addict/search_drug_addict.dart';
import 'package:flutter_application_1/services/drug_addict.service.dart';
import 'package:get/get.dart';

class DrugAddictController extends GetxController {
  var listData = <DrugAddictEntity>[].obs;
  TextEditingController identifyNumberController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController supervisorIdentifyNumberController = TextEditingController();
  TextEditingController supervisorFullNameController = TextEditingController();
  var selectedTreatmentPlace = Rxn<int>();
  var selectedCity = Rxn<int>();
  var selectedDistrict = Rxn<int>();
  var selectedWard = Rxn<int>();

  Future<void> fetchData() async {
    try {
      List<DrugAddictEntity> data = await DrugAddictService.getAll(SearchDrugAddict(
        cityId: selectedCity.value,
        wardId: selectedWard.value,
        districtId: selectedDistrict.value,
        fullName: fullNameController.text,
        identifyNumber: identifyNumberController.text,
        supervisorFullName: supervisorFullNameController.text,
        supervisorIdentifyNumber: supervisorIdentifyNumberController.text,
        treatmentPlaceId: selectedTreatmentPlace.value,
      ));

      listData.value = data;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void setTreatmentPlace(int? value) {
    selectedTreatmentPlace.value = value;
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
    supervisorIdentifyNumberController.dispose();
    supervisorFullNameController.dispose();

    super.onClose();
  }
}
