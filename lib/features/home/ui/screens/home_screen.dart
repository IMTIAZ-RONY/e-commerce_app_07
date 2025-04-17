import 'package:e_commerce_app_07/app/app_colors.dart';
import 'package:e_commerce_app_07/app/assets_path.dart';
import 'package:e_commerce_app_07/features/common/ui/controllers/main_bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../category/ui/screens/category_list_screen.dart';
import '../widgets/app_bar_icon_button.dart';
import '../../../common/ui/widgets/category_item_widget.dart';
import '../widgets/home_carousel_slider.dart';
import '../widgets/home_section_header.dart';
import '../../../common/ui/widgets/product_item_widgets.dart';
import '../widgets/product_search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
   static const String name='/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchBarController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height:16 ,),
            ProductSearchBar(controller:_searchBarController ,) ,
            SizedBox(height:16 ,),
            HomeCarouselSlider(),
            SizedBox(height: 8,),
            HomeSectionHeader(title: 'All Categories', onTap: () {
             Get.find<MainBottomNavController>().moveToCategory();
            },),
            SizedBox(height: 8,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: _getCategoryList(),
              ),
            ),
            SizedBox(height: 8,),
            HomeSectionHeader(title: 'Popular', onTap: () {  },),
            SizedBox(height: 8,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _getProductList(),
              ),
            ),
            SizedBox(height: 8,),
            HomeSectionHeader(title: 'Special', onTap: () {  },),
            SizedBox(height: 8,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _getProductList(),
              ),
            ),
            SizedBox(height: 8,),
            HomeSectionHeader(title: 'New', onTap: () {  },),
            SizedBox(height: 8,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _getProductList(),
              ),
            ),
          ]
        ),

      ) ,
    );
  }
  //1 step
 /* List<Widget> _getCategoryList(){
    return List.generate(10, (index) => CategoryItemWidget());
  }*/
  //2n step
 List<Widget>_getCategoryList(){
  List<Widget> categoryList=[];
  for(int i=0; i<10; i++){
    categoryList.add(CategoryItemWidget());
  }
   return categoryList;
 }

 /*List<Widget>_getProductList(){
 List<Widget> productList =[];
 for(int i=0 ; i<10; i++) {
   productList.add(ProductItemWidget());
 }
   return productList;
 }*/
 List<Widget>_getProductList(){
   return List.generate(10, (index) => ProductItemWidget());
 }
  AppBar _buildAppBar() {
    return AppBar(
      title: SvgPicture.asset(AssetsPath.appLogoNavSvg),
      actions:[
       AppBarIconButton(icon:Icons.person_outline, onTap: () { },),
       AppBarIconButton(icon:Icons.call, onTap: () { },),
       AppBarIconButton(icon:Icons.notifications, onTap: () { },),
      ],
    );
  }
}












