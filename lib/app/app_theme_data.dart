
import 'package:e_commerce_app_07/app/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemeData{
  //getter method
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

/*
getter method
static ThemeData get lightThemeData
 => এটা হলো একটি static গেটার (static getter)।
 এটি কোনো class বা ফাংশন না — বরং একটি property-এর মতো behave করে, but ভিতরে কোড থাকে।

 */

/*
এখন ধাপে ধাপে বুঝি:
1. static

    এটা ক্লাসের মেম্বার হলেও অবজেক্ট ছাড়া অ্যাক্সেস করা যাবে।

    মানে তুমি AppThemeData.lightThemeData লিখেই এক্সেস করতে পারো, কোনো AppThemeData অবজেক্ট বানানোর দরকার নেই।

2. ThemeData

    এটা হলো এই গেটারটি কি টাইপের ডেটা ফেরত দিচ্ছে, সেটা বোঝায়।

    এখানে ThemeData হচ্ছে Flutter এর থিম সংক্রান্ত ক্লাস।

3. get lightThemeData

    get দিয়ে Dart জানায়, এটি একটি getter — মানে এটি একটি পড়ার জন্য প্রপার্টি, যেটা রিটার্ন করে কোনো ভ্যালু।

    এখানে lightThemeData হচ্ছে propertyর   নাম।

Getter vs Function

Feature	                       Getter	                                                   Function

লেখা হয় get দিয়ে	                yes                                                         না

কল করতে () লাগে না	      AppThemeData.lightThemeData	                                   someFunction()

return করে value	               yes                                                        yes

parameter নেয়	                    না	                                                   yes বা না (দুটোই হতে পারে)

 */