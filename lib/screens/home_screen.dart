import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/build_text_field.dart';
import 'package:flutter_application_1/components/layout.dart';
import 'package:flutter_application_1/constants/maps.dart';
import 'package:flutter_application_1/constants/paths.dart';
import 'package:flutter_application_1/helpers/app_shared_pref.dart';
import 'package:flutter_application_1/models/police/police_entity.dart';
import 'package:flutter_application_1/utils/date_formatter.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController identifyNumberController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final TextEditingController levelController = TextEditingController();
  final TextEditingController roleController = TextEditingController();
  final TextEditingController workUnitController = TextEditingController();
  final TextEditingController createdDateController = TextEditingController();
  final TextEditingController creatorNameController = TextEditingController();

  @override
  void dispose() {
    identifyNumberController.dispose();
    fullNameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    genderController.dispose();
    birthDateController.dispose();
    levelController.dispose();
    roleController.dispose();
    workUnitController.dispose();
    createdDateController.dispose();
    creatorNameController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    checkSession();

    super.initState();
  }

  Future<void> checkSession() async {
    String? accessToken = await AppSharedPref.getAccessToken();

    if (accessToken != null) {
      await initUserProfile();
    } else {
      await AppSharedPref.clear();

      context.replace("/${AppPaths.login}");
    }
  }

  Future<void> initUserProfile() async {
    try {
      PoliceEntity? data = await AppSharedPref.getUserProfile();

      if (data != null) {
        identifyNumberController.text = data.identifyNumber;
        fullNameController.text = data.fullName;
        phoneController.text = data.phoneNumber;
        emailController.text = data.email;
        genderController.text = AppMaps.gender[data.gender] ?? "Unknown";
        birthDateController.text = DateFormatter.formatBirthDate(data.dateOfBirth);
        levelController.text = AppMaps.level[data.level] ?? "Unknown";
        roleController.text = AppMaps.role[data.role] ?? "Unknown";
        workUnitController.text = data.workPlace;
        creatorNameController.text = data.createdBy.fullName ?? "";
        createdDateController.text = DateFormatter.formatCreatedDate(data.createdAt);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      title: "Thông tin người dùng",
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTextField('Số CCCD', identifyNumberController),
                buildTextField('Họ và tên', fullNameController),
                buildTextField('Số điện thoại', phoneController),
                buildTextField('Email', emailController),
                Row(
                  children: [
                    Expanded(child: buildTextField('Giới tính', genderController)),
                    const SizedBox(width: 16.0),
                    Expanded(child: buildTextField('Ngày sinh', birthDateController)),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: buildTextField('Cấp bậc', levelController)),
                    const SizedBox(width: 16.0),
                    Expanded(child: buildTextField('Chức vụ', roleController)),
                  ],
                ),
                buildTextField('Đơn vị công tác', workUnitController),
                buildTextField('Ngày tạo', createdDateController),
                buildTextField('Người tạo', creatorNameController),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
