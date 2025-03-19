import 'package:flutter/material.dart';
import '../features/auth/ui/screens/email_verification_screen.dart';
import '../features/auth/ui/screens/otp_verification_screen.dart';
import '../features/auth/ui/screens/splash_screen.dart';
import 'app_theme_data.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:AppThemeData.lightThemeData,
      darkTheme:AppThemeData.darkThemeData ,
      themeMode:ThemeMode.light ,

      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context)=>const SplashScreen(),
        EmailVerificationScreen.name: (context)=>const EmailVerificationScreen(),
        OtpVerificationScreen.name: (context)=>const OtpVerificationScreen(),

      },
    );
  }
}
//complete