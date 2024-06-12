import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/build_select_field.dart';
import 'package:flutter_application_1/components/build_text_field.dart';
import 'package:flutter_application_1/constants/data.dart';
import 'package:flutter_application_1/controllers/police.controller.dart';
import 'package:get/get.dart';

class PoliceAdvancedSearch extends GetView<PoliceController> {
  const PoliceAdvancedSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTextField("Số CCCD", controller.identifyNumberController, readOnly: false),
        buildTextField("Họ và tên", controller.fullNameController, readOnly: false),
        Obx(() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: buildSelectField<int?>(
                      "Cấp bậc",
                      controller.selectedLevel.value,
                      AppData.levels,
                      (int? value) {
                        controller.setLevel(value);
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: buildSelectField<int?>(
                      "Chức vụ",
                      controller.selectedRole.value,
                      AppData.roles,
                      (int? value) {
                        controller.setRole(value);
                      },
                    ),
                  ),
                ],
              ),
              // const Padding(
              //   padding: EdgeInsets.symmetric(vertical: 8.0),
              //   child: Text(
              //     "Đơn vị công tác",
              //     style: TextStyle(fontWeight: FontWeight.bold),
              //   ),
              // ),
              // buildSelectField<int?>(
              //   "Thành phố",
              //   controller.selectedCity.value,
              //   AppData.roles,
              //   (int? value) {
              //     controller.setCity(value);
              //   },
              // ),
              // buildSelectField<int?>(
              //   "Quận huyện",
              //   controller.selectedDistrict.value,
              //   AppData.roles,
              //   (int? value) {
              //     controller.setDistrict(value);
              //   },
              // ),
              // buildSelectField<int?>(
              //   "Phường xã",
              //   controller.selectedWard.value,
              //   AppData.roles,
              //   (int? value) {
              //     controller.setWard(value);
              //   },
              // ),
            ],
          );
        }),
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
