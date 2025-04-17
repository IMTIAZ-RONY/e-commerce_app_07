import 'package:flutter/material.dart';

import '../../../common/ui/widgets/product_item_widgets.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key, required this.categoryName});
  static const String name='/product/product-list-by-category';
  final String categoryName;
  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categoryName),
      ),
      body:GridView.builder(
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4,
          childAspectRatio: 0.8,
          mainAxisSpacing: 16,),
        itemBuilder: (BuildContext context, int index) {
          return
            FittedBox (child: ProductItemWidget());
          },) ,

    );
  }
}
