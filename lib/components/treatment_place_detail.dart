import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/build_text_field.dart';
import 'package:flutter_application_1/models/treatment_place/treatment_place_entity.dart';

class TreatmentPlaceDetail extends StatelessWidget {
  final TreatmentPlaceEntity data;

  const TreatmentPlaceDetail({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController(text: data.fullName);
    final TextEditingController leaderIdentifyNumberController = TextEditingController(text: data.leaderIdentifyNumber);
    final TextEditingController leaderPhoneController = TextEditingController(text: data.leaderPhoneNumber);
    final TextEditingController leaderEmailController = TextEditingController(text: data.leaderEmail);
    final TextEditingController leaderFullNameController = TextEditingController(text: data.leaderFullName);
    final TextEditingController fullAddressController = TextEditingController(text: data.fullAddress);

    return Column(
      children: [
        const Center(
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey,
            child: Text('Logo', style: TextStyle(fontSize: 12)),
          ),
        ),
        const SizedBox(height: 16),
        buildTextField("Tên", nameController),
        buildTextField("Địa chỉ", fullAddressController),
        buildTextField("Người đứng đầu", leaderFullNameController),
        buildTextField("Số CCCD", leaderIdentifyNumberController),
        buildTextField("Số điện thoại", leaderPhoneController),
        buildTextField("Email", leaderEmailController),
      ],
    );
  }
}
