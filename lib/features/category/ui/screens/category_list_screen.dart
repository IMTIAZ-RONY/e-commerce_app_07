import 'package:e_commerce_app_07/features/common/ui/controllers/main_bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/ui/widgets/category_item_widget.dart';

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({super.key});
  static const String name='/category_list_screen';

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_,__){
       _onPop();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Category List"),
          leading: IconButton(
            icon:Icon(Icons.arrow_back_ios),
            onPressed: ()=>_onPop(),
          )
        ),
        body: GridView.builder(
          itemCount: 20,
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4 ,
          crossAxisSpacing: 4,
          mainAxisSpacing: 16,) ,
          itemBuilder: (BuildContext context, int index) {
            return FittedBox(child: CategoryItemWidget());
          },
        ) ,

      ),
    );
  }
  void _onPop(){
    Get.find<MainBottomNavController>().backToHome();
  }
}
