import 'package:flutter/material.dart';
import '../constant/constantsColors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    //elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.black) )),
      scaffoldBackgroundColor: ConstantsColors.scaffoldColor[100],
      appBarTheme: const AppBarTheme(
        color: ConstantsColors.appBarColor,
        titleTextStyle: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),
        elevation: 1,
      ),
      textTheme: const TextTheme(
          ///for titles
          headline5: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
              color: ConstantsColors.textBlackColor),

          /// for Small Text
          bodyText1: TextStyle(
              fontSize: 15,
              color: ConstantsColors.textBlackColor,
              fontWeight: FontWeight.w400)),



  );
}
