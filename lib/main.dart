import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/router.dart';
import 'package:flutter_application_1/constants/paths.dart';
import 'package:flutter_application_1/helpers/app_shared_pref.dart';
import 'package:flutter_application_1/services/auth.service.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppSharedPref.init();

  bool isLoggedIn = await AuthService.isLoggedIn();

  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;

  const MyApp({required this.isLoggedIn, super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: isLoggedIn ? AppPaths.home : AppPaths.login,
      getPages: AppRouter.getPages(),
      builder: (context, child) {
        EasyLoading.instance.maskType = EasyLoadingMaskType.black;

        return FlutterEasyLoading(child: child);
      },
    );
  }
}
