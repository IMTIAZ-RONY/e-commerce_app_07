import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class ColorPickerWidget extends StatefulWidget {
  const ColorPickerWidget({super.key, required this.colors, required this.onColorSelected});
  final List<String> colors;
  final Function(String) onColorSelected;

  @override
  State<ColorPickerWidget> createState() => _ColorPickerWidgetState();
}

class _ColorPickerWidgetState extends State<ColorPickerWidget> {
  String? _selectedColor;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:getColorItems(),
      ),
    );
  }

  List<Widget> getColorItems(){
    List<Widget> colorItemWidgetList=[];
    for(String color in widget.colors){
      Widget item=getColorItemWidget(name:color, onTap: (){
        setState(() {
          _selectedColor=color;
          widget.onColorSelected!(_selectedColor!);
        });
      }, isSelected: _selectedColor==color);
      colorItemWidgetList.add(item);
    }
    return colorItemWidgetList;
  }
  Widget getColorItemWidget({required String name, required VoidCallback onTap, required bool isSelected}){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(4),
        margin: EdgeInsets.symmetric(horizontal:4),
        decoration: BoxDecoration(
          border: Border.all(),
          color: isSelected==true?AppColors.themeColor:Colors.transparent,
        ),
        alignment: Alignment.center,
        child: Text(name,
          style:TextStyle(color:isSelected==true?Colors.white:null,) ,),

      ),
    );
  }
}

