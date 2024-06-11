import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/build_text_field.dart';
import 'package:flutter_application_1/constants/maps.dart';
import 'package:flutter_application_1/models/drug_addict/drug_addict_entity.dart';

class DrugAddictDetail extends StatelessWidget {
  final DrugAddictEntity data;

  const DrugAddictDetail({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final TextEditingController identifyNumberController = TextEditingController(text: data.identifyNumber);
    final TextEditingController nameController = TextEditingController(text: data.fullName);
    final TextEditingController phoneController = TextEditingController(text: data.phoneNumber);
    final TextEditingController emailController = TextEditingController(text: data.email);
    final TextEditingController supervisorController = TextEditingController(text: data.police?.fullName);
    final TextEditingController assignAtController = TextEditingController(text: data.assignAt);
    final TextEditingController genderController = TextEditingController(text: AppMaps.gender[data.gender]);
    final TextEditingController levelController = TextEditingController(text: data.police?.levelName);
    final TextEditingController birthDateController = TextEditingController(text: data.dateOfBirth);
    final TextEditingController treatmentPlaceController = TextEditingController(text: data.treatmentPlace?.fullName);
    final TextEditingController permanentAddressController = TextEditingController(text: data.fullPermanent);
    final TextEditingController currentAddressController = TextEditingController(text: data.fullCurrent);

    return Column(
      children: [
        const Center(
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Avatar', style: TextStyle(fontSize: 12)),
                Text('đối tượng', style: TextStyle(fontSize: 12)),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        buildTextField("CCCD", identifyNumberController),
        buildTextField("Họ và tên", nameController),
        buildTextField("Số điện thoại", phoneController),
        buildTextField("Email", emailController),
        Row(
          children: [
            Expanded(child: buildTextField("Giới tính", genderController)),
            const SizedBox(width: 16.0),
            Expanded(child: buildTextField("Ngày sinh", birthDateController)),
          ],
        ),
        buildTextField("Người giám sát", supervisorController),
        Row(
          children: [
            Expanded(child: buildTextField("Cấp bậc", levelController)),
            const SizedBox(width: 16.0),
            Expanded(child: buildTextField("Ngày phân công", assignAtController)),
          ],
        ),
        buildTextField("Nơi cai nghiện", treatmentPlaceController),
        buildTextField("Địa chỉ thường trú", permanentAddressController),
        buildTextField("Địa chỉ thực tế", currentAddressController),
      ],
    );
  }
}
