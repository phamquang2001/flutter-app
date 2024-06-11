import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/paths.dart';
import 'package:flutter_application_1/helpers/app_shared_pref.dart';
import 'package:flutter_application_1/services/auth.service.dart';
import 'package:flutter_application_1/utils/snackbar_util.dart';
import 'package:go_router/go_router.dart';
import 'forgot_password_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController(text: "001200004601");
  final TextEditingController _passwordController = TextEditingController(text: "LQkw07\$!");
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  @override
  void initState() {
    checkSession();

    super.initState();
  }

  Future<void> checkSession() async {
    String? accessToken = await AppSharedPref.getAccessToken();

    if (accessToken != null) {
      context.replace(AppPaths.home);
    }
  }

  Future<void> _login() async {
    try {
      setState(() {
        _isLoading = true;
      });

      String username = _usernameController.text;
      String password = _passwordController.text;

      await AuthService.login(username, password);

      SnackbarUtil.showSuccess(context);

      context.replace(AppPaths.home);
    } catch (e) {
      SnackbarUtil.showError(context);

      debugPrint("BUG: ${e.toString()}");
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _navigateToForgotPassword() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
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
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(labelText: 'Tên đăng nhập'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Hãy điền đầy đủ thông tin';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(labelText: 'Mật khẩu'),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Hãy điền đầy đủ thông tin';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  if (_isLoading)
                    const CircularProgressIndicator()
                  else
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          _login();
                        }
                      },
                      child: const Text('Đăng nhập'),
                    ),
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
