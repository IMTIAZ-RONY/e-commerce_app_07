import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class HomeSectionHeader extends StatelessWidget {
  const HomeSectionHeader({
    super.key, required this.title, required this.onTap,

  });
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color:Colors.black,
            fontSize:22,
            fontWeight:FontWeight.bold,
          )),
          TextButton(onPressed: onTap, child: Text("See All",style:Theme.of(context).textTheme.titleMedium?.copyWith(color:AppColors.themeColor),))
        ],
      ),
    );

  }
}