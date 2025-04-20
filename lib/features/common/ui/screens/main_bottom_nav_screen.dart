import 'package:e_commerce_app_07/features/wishList/ui/screen/wish_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../cart/ui/screens/cart_list_screen.dart';
import '../../../category/ui/screens/category_list_screen.dart';
import '../../../home/ui/screens/home_screen.dart';
import '../controllers/main_bottom_nav_controller.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});
  static const String name='/main-bottom-nav';

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  //final MainBottomNavController bottomNavController=Get.find<MainBottomNavController>();
  @override
  Widget build(BuildContext context) {
      final List<Widget>screens=[
        const HomeScreen(),
        const CategoryListScreen(),
        const CartListScreen(),
        const WishListScreen(),
      ];

    return GetBuilder<MainBottomNavController>(
      builder: ( bottomNavController) {
        return Scaffold(
          body: screens[bottomNavController.selectedIndex],
          bottomNavigationBar:NavigationBar(
              selectedIndex: bottomNavController.selectedIndex,
              onDestinationSelected: bottomNavController.changeIndex,
              destinations: [
                NavigationDestination(icon: Icon(Icons.home), label: "Home"),
                NavigationDestination(icon: Icon(Icons.category), label: "Categories"),
                NavigationDestination(icon: Icon(Icons.shopping_cart), label: "Cart"),
                NavigationDestination(icon: Icon(Icons.favorite_border), label: "Wishlist"),
              ]) ,
        );
      },

    );
  }
}
