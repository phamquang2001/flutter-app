import 'package:flutter_application_1/constants/paths.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/login_page.dart';
import 'package:flutter_application_1/screens/drug_addicts_screen.dart';
import 'package:flutter_application_1/screens/polices_screen.dart';
import 'package:flutter_application_1/screens/treatment_places_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: AppPaths.home,
        builder: (context, state) => const HomeScreen(),
        routes: <RouteBase>[
          GoRoute(
            path: AppPaths.login,
            builder: (context, state) => const LoginPage(),
          ),
          GoRoute(
            path: AppPaths.polices,
            builder: (context, state) => const PolicesScreen(),
          ),
          GoRoute(
            path: AppPaths.drugAddicts,
            builder: (context, state) => const DrugAddictsScreen(),
          ),
          GoRoute(
            path: AppPaths.treatmentPlaces,
            builder: (context, state) => const TreatmentPlacesScreen(),
          ),
        ],
      ),
    ],
  );
}
