import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import '../features/auth/ui/screens/complete_profile_screen.dart';
import '../features/auth/ui/screens/email_verification_screen.dart';
import '../features/auth/ui/screens/otp_verification_screen.dart';
import '../features/auth/ui/screens/splash_screen.dart';
import '../features/category/ui/screens/category_list_screen.dart';
import '../features/common/ui/screens/main_bottom_nav_screen.dart';
import '../features/home/ui/screens/home_screen.dart';
import '../features/product/ui/screens/product_details_screen.dart';
import '../features/product/ui/screens/product_list_screen.dart';
import '../features/wishList/ui/screen/wish_list_screen.dart';
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

     /// On Generate Route(argument pass korar khetre)

      onGenerateRoute:(RouteSettings settings){
        late Widget widget;
        if(settings.name==SplashScreen.name){
          widget=const SplashScreen();
        }else if(settings.name==EmailVerificationScreen.name){
          widget=const EmailVerificationScreen();
        }else if(settings.name==OtpVerificationScreen.name){
          widget=const OtpVerificationScreen();
        }else if(
        settings.name==CompleteProfileScreen.name){
          widget=const CompleteProfileScreen();
        }else if(settings.name==HomeScreen.name){
          widget=const HomeScreen();
        }else if(settings.name==MainBottomNavScreen.name){
          widget=const MainBottomNavScreen();
        }else if(settings.name==CategoryListScreen.name){
          widget=const CategoryListScreen();
        }else if(settings.name==ProductDetailsScreen.name){
          int productId=settings.arguments as int;
          widget=ProductDetailsScreen(productId: productId,);
        } else if(
        settings.name==ProductListScreen.name){
          String name=settings.arguments as String;
          widget=ProductListScreen(categoryName: name,);
        }

        return MaterialPageRoute(builder: (ctx){
           return widget;
        });
      } ,

      ///Named Route(Argument pass kora na lagle)

    /*  initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context)=>const SplashScreen(),
        EmailVerificationScreen.name: (context)=>const EmailVerificationScreen(),
        OtpVerificationScreen.name: (context)=>const OtpVerificationScreen(),
        CompleteProfileScreen.name:(context)=>const CompleteProfileScreen(),
        HomeScreen.name:(context)=>const HomeScreen(),
        MainBottomNavScreen.name:(context)=>const MainBottomNavScreen(),
        CategoryListScreen.name:(context)=>const CategoryListScreen(),
        ProductListScreen.name:(context)=>const ProductListScreen(),

      },*/
    );
  }
}
