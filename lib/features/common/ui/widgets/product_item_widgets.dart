import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/assets_path.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:4.0),
      child: SizedBox(
        width:140,
        child: Card(
          elevation: 2,
          color:Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
              children: [
                Container(
                  padding:EdgeInsets.all(16) ,
                  decoration: BoxDecoration(
                    color:AppColors.themeColor.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(16),
                      topRight:Radius.circular(16),
                    ),
                  ),
                  child:Image.asset (AssetsPath.shoesImagePNG,height:100,width:140 ,),
                ),
                SizedBox(height:4 ,),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text("New Year Special Shoe 30",
                        maxLines:1,
                        style:TextStyle(
                          color:Colors.black,
                          overflow:TextOverflow.ellipsis,
                        ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$100"),
                          SizedBox(width:4 ,),
                          Wrap(
                              children: [
                                Icon(Icons.star,color:Colors.yellowAccent,size:16,),
                                Text("4.8"),
                              ]
                          ),
                          SizedBox(width:4 ,),
                          Container(
                            padding:EdgeInsets.symmetric(horizontal:4,vertical:2),
                            decoration: BoxDecoration(
                              color:AppColors.themeColor.withValues(alpha: 0.14),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Icon(Icons.favorite_border,color:Colors.white,size:16,),

                          ),
                        ],
                      ),
                    ],

                  ),
                )
              ]
          ),
        ),
      ),
    );
  }
}