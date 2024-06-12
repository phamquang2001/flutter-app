import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/build_text_field.dart';
import 'package:flutter_application_1/services/auth.service.dart';
import 'package:flutter_application_1/utils/snackbar_util.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _identifyNumberController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> _forgotPassword() async {
    try {
      String identifyNumber = _identifyNumberController.text;

      await AuthService.forgotPassword(identifyNumber);

      SnackbarUtil.showSuccess("Hệ thống đã gửi mật khẩu mới vào email của bạn");
    } catch (e) {
      Get.log("BUG: ${e.toString()}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quên mật khẩu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              buildTextField(
                "Tên đăng nhập",
                _identifyNumberController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Hãy điền CCCD';
                  }
                  return null;
                },
                readOnly: false,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    _forgotPassword();
                  }
                },
                child: const Text('Gửi mail'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
