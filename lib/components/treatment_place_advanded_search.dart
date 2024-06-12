import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/build_text_field.dart';
import 'package:flutter_application_1/controllers/treatment_place.controller.dart';
import 'package:get/get.dart';

class TreatmentPlaceAdvancedSearch extends GetView<TreatmentPlaceController> {
  const TreatmentPlaceAdvancedSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTextField("Tên nơi cai nghiện", controller.fullNameController, readOnly: false),
        buildTextField("Họ và tên người đứng đầu", controller.leaderFullNameController, readOnly: false),
        buildTextField("Số CCCD người đứng đầu", controller.leaderIdentifyNumberController, readOnly: false),
        buildTextField("Số điện thoại người đứng đầu", controller.leaderPhoneController, readOnly: false),
        // Obx(() {
        //   return Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       const Padding(
        //         padding: EdgeInsets.symmetric(vertical: 8.0),
        //         child: Text(
        //           "Địa chỉ",
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
