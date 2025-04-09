import 'package:e_commerce_app_07/app/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/app_bar_icon_button.dart';
import '../widgets/home_carousel_slider.dart';
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
            HomeCarouselSlider()
          ]
      ) ,

      ) ,
    );
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






