import 'package:e_commerce_app_07/features/product/ui/widgets/product_image_carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../../app/app_colors.dart';
import '../widgets/color_picker_widget.dart';
import '../../../common/ui/widgets/product_quantity_inc_dec_button.dart';
import '../widgets/size_picker_widget.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.productId});
  static const String name = '/product/product-details';
  final int productId;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product Details",
          style: textTheme.titleLarge?.copyWith(
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const ProductImageCarouselSlider(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Nike Shoe A2ERF - New year special deal",
                                    style: textTheme.titleMedium,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.star,
                                          color: Colors.yellowAccent, size: 16),
                                      const SizedBox(width: 4),
                                      const Text(
                                        "4.5",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        child: const Text("Reviews"),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 4, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: AppColors.themeColor
                                              .withAlpha(40),
                                          borderRadius:
                                          BorderRadius.circular(4),
                                        ),
                                        child: const Icon(
                                          Icons.favorite_border,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            ProductQuantityIncDecButton(
                              onQuantityChanged: (int value) {},
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Text("Color", style: textTheme.titleMedium),
                        const SizedBox(height: 8),
                        ColorPickerWidget(
                          colors: ["Red", "Green", "Yellow", "Pink"],
                          onColorSelected: (String selectedColor) {},
                        ),
                        const SizedBox(height: 16),
                        Text("Size", style: textTheme.titleMedium),
                        const SizedBox(height: 8),
                        SizePickerWidget(
                          sizes: ["S", "M", "L", "XL"],
                          onSizeSelected: (String selectedSize) {},
                        ),
                        const SizedBox(height: 16),
                        Text("Description", style: textTheme.titleMedium),
                        const SizedBox(height: 8),
                        const Text(
                          '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ullamcorper, nisl eu ultricies vehicula, ipsum nunc tincidunt ligula, eget ultricies massa dolor at felis. Integer nibh odio, tincidunt nec sodales eget, auctor a sem. Suspendisse pellentesque iaculis porta. Nullam nisi nisi, aliquam aliquam fermentum quis, placerat in velit.''',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildPriceAndAddToCartSection(textTheme),
        ],
      ),
    );
  }

  Widget _buildPriceAndAddToCartSection(TextTheme textTheme) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.themeColor.withAlpha(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Price",
                style: textTheme.titleSmall?.copyWith(letterSpacing: 1),
              ),
              Text(
                "\$1000",
                style: textTheme.titleMedium?.copyWith(
                  color: AppColors.themeColor,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 120,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Add to cart",
                style: textTheme.titleMedium?.copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
