
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class ProductQuantityIncDecButton extends StatefulWidget {
  const ProductQuantityIncDecButton({super.key, required this.onQuantityChanged});
  final Function(int) onQuantityChanged;

  @override
  State<ProductQuantityIncDecButton> createState() => _ProductQuantityIncDecButtonState();
}

class _ProductQuantityIncDecButtonState extends State<ProductQuantityIncDecButton> {
  int _quantity=1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0),
      child: Row(
        children: [
          _buildIconButton(icon:Icons.remove , onTap: () {
            setState(() {
              if(_quantity>1){
                _quantity--;
                widget.onQuantityChanged(_quantity);
              }
            });
          }) ,
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("$_quantity",style:TextStyle(color:Colors.black,fontSize:18,fontWeight:FontWeight.w500),),
          ),
          _buildIconButton(icon:Icons.add , onTap: () {
            setState(() {
              if(_quantity<20){
                _quantity++;
                widget.onQuantityChanged(_quantity);
              }
            });
          }) ,

        ]
      ),
    );
  }

  Widget _buildIconButton({required IconData icon,required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding:EdgeInsets.all(4),
          decoration: BoxDecoration(
            color:AppColors.themeColor.withValues(alpha: 0.4,),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Icon(icon,size:20,color:Colors.white,),),
    );
  }
}
