import 'package:get/get.dart';
import 'package:pmt/routes/routes_name.dart';
import 'package:pmt/view/login_screen.dart';
import 'package:pmt/view/navigationBar_screen.dart';
import 'package:pmt/view/otp_screen.dart';

class AppRoutes {
  //adding routes navigation
  static appRoutes() => [
        GetPage(
          page: () => const LoginScreen(),
          name: RouteName.loginScreen,
          transition: Transition.rightToLeftWithFade,
          transitionDuration: const Duration(seconds: 1),
        ),
        GetPage(
          page: () => const OtpScreen(),
          name: RouteName.otpScreen,
          transition: Transition.rightToLeftWithFade,
          transitionDuration: const Duration(seconds: 1),
        ),
        // GetPage(
        //   page: () => const HomeScreen(),
        //   name: RouteName.homeScreen,
        //   transition: Transition.rightToLeftWithFade,
        //   transitionDuration: const Duration(seconds: 1),
        // ),
        GetPage(
          page: () => const NavigationBarScreen(),
          name: RouteName.navBarScreen,
          transition: Transition.rightToLeftWithFade,
          transitionDuration: const Duration(seconds: 1),
        ),
      ];
}
