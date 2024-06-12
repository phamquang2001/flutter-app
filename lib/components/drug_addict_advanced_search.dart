import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/build_text_field.dart';
import 'package:flutter_application_1/controllers/drug_addict.controller.dart';
import 'package:get/get.dart';

class DrugAddictAdvancedSearch extends GetView<DrugAddictController> {
  const DrugAddictAdvancedSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTextField("Số CCCD", controller.identifyNumberController, readOnly: false),
        buildTextField("Họ và tên", controller.fullNameController, readOnly: false),
        buildTextField("Số CCCD người giám sát", controller.supervisorIdentifyNumberController, readOnly: false),
        buildTextField("Họ và tên người giám sát", controller.supervisorFullNameController, readOnly: false),
        // Obx(() {
        //   return Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       buildSelectField<int?>(
        //         "Nơi cai nghiện",
        //         controller.selectedTreatmentPlace.value,
        //         AppData.roles,
        //         (int? value) {
        //           controller.setTreatmentPlace(value);
        //         },
        //       ),
        //       const Padding(
        //         padding: EdgeInsets.symmetric(vertical: 8.0),
        //         child: Text(
        //           "Thường trú",
        //           style: TextStyle(fontWeight: FontWeight.bold),
        //         ),
        //       ),
        //       buildSelectField<int?>(
        //         "Thành phố",
        //         controller.selectedCity.value,
        //         AppData.roles,
        //         (int? value) {
        //           controller.setCity(value);
        //         },
        //       ),
        //       buildSelectField<int?>(
        //         "Quận huyện",
        //         controller.selectedDistrict.value,
        //         AppData.roles,
        //         (int? value) {
        //           controller.setDistrict(value);
        //         },
        //       ),
        //       buildSelectField<int?>(
        //         "Phường xã",
        //         controller.selectedWard.value,
        //         AppData.roles,
        //         (int? value) {
        //           controller.setWard(value);
        //         },
        //       ),
        //     ],
        //   );
        // }),
        ElevatedButton(
          onPressed: () {
            Get.back();
            controller.fetchData();
          },
          child: const Text("Tìm kiếm"),
        ),
      ],
    );
  }
}
