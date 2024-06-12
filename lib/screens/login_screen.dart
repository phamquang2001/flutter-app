import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/build_text_field.dart';
import 'package:flutter_application_1/constants/paths.dart';
import 'package:flutter_application_1/services/auth.service.dart';
import 'package:flutter_application_1/utils/snackbar_util.dart';
import 'package:get/get.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController(text: "001200004601");
  final TextEditingController _passwordController = TextEditingController(text: "LQkw07\$!");
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> _login() async {
    try {
      String username = _usernameController.text;
      String password = _passwordController.text;

      await AuthService.login(username, password);

      SnackbarUtil.showSuccess("Đăng nhập thành công");

      Get.offAllNamed(AppPaths.home);
    } catch (e) {
      Get.log("BUG: ${e.toString()}");
    }
  }

  void _navigateToForgotPassword() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset('assets/logo.png'),
                  ),
                  const SizedBox(height: 20),
                  buildTextField(
                    "Tên đăng nhập",
                    _usernameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Hãy điền tên đăng nhập';
                      }
                      return null;
                    },
                    readOnly: false,
                  ),
                  buildTextField(
                    "Mật khẩu",
                    _passwordController,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Hãy điền mật khẩu';
                      }
                      return null;
                    },
                    readOnly: false,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        _login();
                      }
                    },
                    child: const Text('Đăng nhập'),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: _navigateToForgotPassword,
                    child: const Text('Quên mật khẩu?'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
