
import 'package:e_commerce_app_07/app/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemeData{
  static ThemeData get lightThemeData{
    return ThemeData(
      colorSchemeSeed: AppColors.themeColor,
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color:AppColors.themeColor ,
      ),
      scaffoldBackgroundColor:Colors.white,
      appBarTheme:AppBarTheme(
        backgroundColor:Colors.white,
      ) ,
      textTheme: const TextTheme(
        titleLarge: TextStyle(fontSize:34,fontWeight:FontWeight.w600,color:Colors.black , ) ,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        fillColor:Colors.white ,
        filled:true ,
        contentPadding:EdgeInsets.symmetric(horizontal:16,vertical:10,),
        hintStyle:TextStyle(fontWeight:FontWeight.w400 ,color:Colors.grey , ) ,
        border:OutlineInputBorder(
          borderSide:BorderSide(color:AppColors.themeColor,width:1,style:BorderStyle.solid  ) ,
        ) ,
        enabledBorder:OutlineInputBorder(
          borderSide:BorderSide(color:AppColors.themeColor,width: 1,style:BorderStyle.solid),
        ) ,
        focusedBorder:OutlineInputBorder(
            borderSide:BorderSide(color:AppColors.themeColor,width: 1,style:BorderStyle.solid )
        ) ,
      ),
      elevatedButtonTheme:ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.themeColor,
            foregroundColor: Colors.white,
            fixedSize: const Size.fromWidth(double.maxFinite),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            textStyle: const TextStyle(
                fontWeight: FontWeight.w400, fontSize: 16),
            padding: const EdgeInsets.symmetric(vertical: 12)),
      ) ,
      textButtonTheme:TextButtonThemeData(
        style:TextButton.styleFrom(
          foregroundColor:AppColors.themeColor ,
        )
      ) ,
    );
  }

  /// darkTheme
  static ThemeData get darkThemeData{
    return ThemeData(
      colorSchemeSeed: AppColors.themeColor,
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color:AppColors.themeColor ,
      ),
      brightness:Brightness.dark ,
      //scaffoldBackgroundColor:Colors.black54,
    );
  }
}