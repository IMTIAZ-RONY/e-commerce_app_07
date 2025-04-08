import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import '../features/auth/ui/screens/complete_profile_screen.dart';
import '../features/auth/ui/screens/email_verification_screen.dart';
import '../features/auth/ui/screens/otp_verification_screen.dart';
import '../features/auth/ui/screens/splash_screen.dart';
import '../features/common/ui/screens/main_bottom_nav_screen.dart';
import '../features/home/ui/screens/home_screen.dart';
import 'app_theme_data.dart';
import 'controller_binder.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme:AppThemeData.lightThemeData,
      darkTheme:AppThemeData.darkThemeData ,
      themeMode:ThemeMode.light ,
     ///forControllerBindings
      initialBinding: ControllerBinder(),
     //Named Route
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context)=>const SplashScreen(),
        EmailVerificationScreen.name: (context)=>const EmailVerificationScreen(),
        OtpVerificationScreen.name: (context)=>const OtpVerificationScreen(),
        CompleteProfileScreen.name:(context)=>const CompleteProfileScreen(),
        HomeScreen.name:(context)=>const HomeScreen(),
        MainBottomNavScreen.name:(context)=>const MainBottomNavScreen(),

      },
    );
  }
}
//complete