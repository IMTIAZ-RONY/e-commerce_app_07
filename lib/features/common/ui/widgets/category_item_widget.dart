import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../app/app_colors.dart';
import '../../../product/ui/screens/product_list_screen.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Get.toNamed(ProductListScreen.name,arguments: 'Computer'),
      child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:8),
              child: Container(
                padding:EdgeInsets.all(16) ,
                decoration:BoxDecoration(
                  color:AppColors.themeColor.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(8),

                ) ,
                child:Icon(Icons.computer,color:AppColors.themeColor,size:48) ,
              ),
            ),
            SizedBox(height:4 ,),
            Text("Computer",style:TextStyle(
              color:AppColors.themeColor,
              fontSize:16,
              fontWeight:FontWeight.w600,
              letterSpacing:1,
            )),
          ]
      ),
    );
  }
}