import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/app_colors.dart';
import 'styles_manager.dart';
import 'values_manager.dart';
import 'font_manager.dart';

// Light Dark Theme
ThemeData getTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(
          secondary: Colors.white,
        )
        .copyWith(
          background: Colors.white,
          onBackground: Colors.white,
        ),
    dialogBackgroundColor: Colors.white,
    primaryColor: AppColors.primaryColor,
    primaryColorLight: Colors.black,
    primaryColorDark: Colors.white,
    disabledColor: AppColors.primarySecondaryBackground,
    scaffoldBackgroundColor: Colors.white,
    // dialog theme
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      backgroundColor: Colors.white,
      titleTextStyle: const TextStyle(
        color: Colors.black,
      ),
      contentTextStyle: const TextStyle(
        color: Colors.black,
      ),
    ),

    // Bottom sheet theme
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white,
      elevation: 0,
    ),

    // card theme
    cardTheme: CardTheme(
      color: Colors.white,
      shadowColor: Colors.grey,
      elevation: AppSize.s4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.s10),
      ),
    ),

    // button theme
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      shape: StadiumBorder(),
      disabledColor: AppColors.primarySecondaryBackground,
    ),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s5),
        ),
        backgroundColor: AppColors.primaryColor,
        disabledBackgroundColor: AppColors.secondaryColor,
        disabledForegroundColor: Colors.white,
        textStyle: getRegularStyle(
          color: Colors.white,
          fontSize: FontSize.s14,
          fontWeight: FontWeightManager.normal,
        ),
      ),
    ),

    datePickerTheme: DatePickerThemeData(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      headerBackgroundColor: AppColors.primaryColor,
      headerForegroundColor: Colors.white,
      dayBackgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.primaryColor;
          }
          return Colors.transparent;
        },
      ),
      todayForegroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.white;
          }
          return AppColors.primaryColor ;
        },
      ),
      todayBackgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.primaryColor;
          }
          return Colors.transparent;
        },
      ),
      weekdayStyle: const TextStyle(color: AppColors.primaryColor),
      yearStyle: const TextStyle(color: AppColors.primaryColor),
      cancelButtonStyle: TextButton.styleFrom(
        foregroundColor: AppColors.primaryColor, // Text color of Cancel button
      ),
      confirmButtonStyle: TextButton.styleFrom(
        foregroundColor: AppColors.primaryColor, // Text color of OK button
      ),
    ),

    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.primaryColor,
    ),

    // input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s5),
        borderSide: const BorderSide(
          color: AppColors.primaryFourElementText,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s5),
        borderSide: const BorderSide(
          color: AppColors.primaryFourElementText,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s5),
        borderSide: BorderSide(
          color: AppColors.errorColor,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s5),
        borderSide: BorderSide(
          color: AppColors.errorColor,
        ),
      ),
      labelStyle: getRegularStyle(color: Colors.grey),
      hintStyle: getRegularStyle(color: Colors.grey),
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      errorStyle: getRegularStyle(color: Colors.red),
      suffixIconColor: AppColors.primaryColor,
      suffixStyle: getRegularStyle(color: Colors.grey),
      prefixIconColor: AppColors.primaryColor,
      prefixStyle: getRegularStyle(color: Colors.grey),
    ),

    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all<Color>(AppColors.primaryColor),
      fillColor:
          MaterialStateProperty.all<Color>(AppColors.primaryFourElementText),
      side: BorderSide.none,
    ),

    // app bar theme
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(
        color: Colors.black,
        size: AppSize.s40,
      ),
      centerTitle: true,
      color: Colors.transparent,
      elevation: AppSize.s0,
      titleTextStyle: getMediumStyle(
        color: Colors.black,
        fontSize: FontSize.s18,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),

    // text theme
    textTheme: TextTheme(
      displayLarge: getMediumStyle(
        color: Colors.black,
        fontSize: FontSize.s16,
      ),
      bodySmall: getRegularStyle(
        color: Colors.black,
        fontSize: FontSize.s12,
      ),
      bodyLarge: getRegularStyle(
        color: Colors.black,
      ),
    ),
  );
}
