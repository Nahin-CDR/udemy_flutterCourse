import 'package:flutter/material.dart';
import 'package:udemy1/presentation/resources/font_manager.dart';
import 'package:udemy1/presentation/resources/styles_manager.dart';
import 'package:udemy1/presentation/resources/values_manager.dart';
import 'color_manager.dart';

ThemeData getApplicationTheme(){
  //StyleManager styleManager = StyleManager();
  return ThemeData(
    // main colors of the App
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    // ripple color
    splashColor: ColorManager.primaryOpacity70,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey),

    // card view theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4
    ),

    // App bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle: getRegularStyle(color: ColorManager.white,fontSize:FontSize.s16)
    ),

    // Button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.primaryOpacity70
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.white,fontSize: FontSize.s12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12)
        )
      )
    ),

    // text theme
    textTheme: TextTheme(
      displayLarge: getSemiBoldStyle(color: ColorManager.darkGrey, fontSize: FontSize.s16),
      titleMedium: getMediumStyle(color: ColorManager.lightGrey, fontSize:FontSize.s14),
      bodySmall: getRegularStyle(color: ColorManager.grey1, fontSize: FontSize.s12),
      bodyLarge: getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s12)
    ),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle: getRegularStyle(color: ColorManager.grey1, fontSize: FontSize.s12),
      labelStyle: getMediumStyle(color: ColorManager.darkGrey, fontSize:FontSize.s12),
      errorStyle: getRegularStyle(color: ColorManager.darkGrey, fontSize:FontSize.s12),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
      ),
      focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.primary,width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
      ),
      errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.error,width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
      ),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.primary,width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
      ),
    )
  );
}

