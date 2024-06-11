import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/build_text_field.dart';
import 'package:flutter_application_1/constants/maps.dart';
import 'package:flutter_application_1/models/police/police_entity.dart';
import 'package:flutter_application_1/utils/date_formatter.dart';

class PoliceDetail extends StatelessWidget {
  final PoliceEntity data;

  const PoliceDetail({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final TextEditingController identifyNumberController = TextEditingController(text: data.identifyNumber);
    final TextEditingController nameController = TextEditingController(text: data.fullName);
    final TextEditingController phoneController = TextEditingController(text: data.phoneNumber);
    final TextEditingController emailController = TextEditingController(text: data.email);
    final TextEditingController genderController = TextEditingController(text: AppMaps.gender[data.gender]);
    final TextEditingController levelController = TextEditingController(text: AppMaps.level[data.level]);
    final TextEditingController roleController = TextEditingController(text: AppMaps.role[data.role]);
    final TextEditingController birthDateController =
        TextEditingController(text: DateFormatter.formatBirthDate(data.dateOfBirth));
    final TextEditingController workplaceController = TextEditingController(text: data.workPlace);
    final TextEditingController createdAtController =
        TextEditingController(text: DateFormatter.formatCreatedDate(data.createdAt));
    final TextEditingController creatorController = TextEditingController(text: data.createdBy.fullName);

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
                Text('cảnh sát', style: TextStyle(fontSize: 12)),
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
        Row(
          children: [
            Expanded(child: buildTextField("Cấp bậc", levelController)),
            const SizedBox(width: 16.0),
            Expanded(child: buildTextField("Chức vụ", roleController)),
          ],
        ),
        buildTextField("Đơn vị công tác", workplaceController),
        buildTextField("Ngày tạo", createdAtController),
        buildTextField("Người tạo", creatorController),
      ],
    );
  }
}
