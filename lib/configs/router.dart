import 'package:flutter_application_1/bindings/drug_addict.binding.dart';
import 'package:flutter_application_1/bindings/police.binding.dart';
import 'package:flutter_application_1/bindings/treatment_place.binding.dart';
import 'package:flutter_application_1/constants/paths.dart';
import 'package:flutter_application_1/screens/forgot_password_screen.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/drug_addicts_screen.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/screens/polices_screen.dart';
import 'package:flutter_application_1/screens/treatment_places_screen.dart';
import 'package:get/get.dart';

class AppRouter {
  AppRouter._();

  static getPages() {
    return [
      GetPage(
        name: AppPaths.home,
        page: () => const HomeScreen(),
      ),
      GetPage(
        name: AppPaths.login,
        page: () => const LoginScreen(),
      ),
      GetPage(
        name: AppPaths.forgotPassword,
        page: () => const ForgotPasswordScreen(),
      ),
      GetPage(
        name: AppPaths.polices,
        page: () => const PolicesScreen(),
        binding: PoliceBinding(),
      ),
      GetPage(
        name: AppPaths.drugAddicts,
        page: () => const DrugAddictsScreen(),
        binding: DrugAddictBinding(),
      ),
      GetPage(
        name: AppPaths.treatmentPlaces,
        page: () => const TreatmentPlacesScreen(),
        binding: TreatmentPlaceBinding(),
      ),
    ];
  }
}
