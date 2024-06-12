import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/treatment_place/search_treatment_place.dart';
import 'package:flutter_application_1/models/treatment_place/treatment_place_entity.dart';
import 'package:flutter_application_1/services/treatment_place.service.dart';
import 'package:get/get.dart';

class TreatmentPlaceController extends GetxController {
  var listData = <TreatmentPlaceEntity>[].obs;
  TextEditingController fullNameController = TextEditingController();
  TextEditingController leaderFullNameController = TextEditingController();
  TextEditingController leaderIdentifyNumberController = TextEditingController();
  TextEditingController leaderPhoneController = TextEditingController();
  var selectedCity = Rxn<int>();
  var selectedDistrict = Rxn<int>();
  var selectedWard = Rxn<int>();

  Future<void> fetchData() async {
    try {
      List<TreatmentPlaceEntity> data = await TreatmentPlaceService.getAll(SearchTreatmentPlace(
        cityId: selectedCity.value,
        wardId: selectedWard.value,
        districtId: selectedDistrict.value,
        fullName: fullNameController.text,
        leaderFullName: leaderFullNameController.text,
        leaderPhoneNumber: leaderPhoneController.text,
        identifyNumber: leaderIdentifyNumberController.text,
      ));

      listData.value = data;
    } catch (e) {
      debugPrint(e.toString());
    }
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
    fullNameController.dispose();
    leaderFullNameController.dispose();
    leaderIdentifyNumberController.dispose();
    leaderPhoneController.dispose();

    super.onClose();
  }
}
