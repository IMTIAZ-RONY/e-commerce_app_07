import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../common/ui/controllers/main_bottom_nav_controller.dart';
import '../../../common/ui/widgets/product_item_widgets.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});


  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult:(_,__){
        _onPop();
      } ,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Wish List"),
          leading:IconButton(onPressed: _onPop, icon:Icon(Icons.arrow_back_ios,size: 20,),) ,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              itemCount: 20,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 4,
                  childAspectRatio: 0.75,
                  crossAxisCount: 3),
              itemBuilder: (BuildContext context, int index) {
              return FittedBox(child: ProductItemWidget());
              },
          )
        ),
      )
      ),
    );
  }
  void _onPop(){
    Get.find<MainBottomNavController>().backToHome();
  }

}
