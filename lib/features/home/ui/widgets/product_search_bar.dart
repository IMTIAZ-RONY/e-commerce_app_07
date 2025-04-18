import 'package:flutter/material.dart';

class ProductSearchBar extends StatelessWidget {
  const ProductSearchBar({
    super.key, required this.controller,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:8),
      child: TextField(
        controller:controller,
        cursorColor:Colors.blue,
        decoration:InputDecoration(
          hintText:'Search',
          prefixIcon:Icon(Icons.search,color:Colors.grey.shade400,size:24,),
          filled:true,
          fillColor:Colors.grey.shade200,
          contentPadding:EdgeInsets.symmetric(horizontal:16),
          enabledBorder:OutlineInputBorder(
            borderSide:BorderSide.none,
          ),
          errorBorder:OutlineInputBorder(
            borderSide:BorderSide.none,
          ),
          focusedBorder:OutlineInputBorder(
            borderSide:BorderSide.none,
          ),),

      ),
    );
  }
}