import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'font_manager.dart';

TextStyle _getTextStyle(
    double fontSize,
    Color color,
    FontWeight fontWeight,
    ) {
  return GoogleFonts.barlow(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
  );
}

// regular font style
TextStyle getRegularStyle({
  fontSize = FontSize.s14,
  required Color color,
  fontWeight = FontWeightManager.normal,
}) {
  return _getTextStyle(
    fontSize,
    color,
    fontWeight,
  );
}




TextStyle getHeadingStyle({fontSize = FontSize.s40, required color}){
  return  TextStyle(
    fontWeight: FontWeightManager.bold,
    height: 0.8,
    fontSize:fontSize,
    color: color,
  );
}

TextStyle getHeadingStyle2({fontSize = FontSize.s30, required color}){
  return  TextStyle(
    fontWeight: FontWeightManager.bold,
    fontSize:fontSize,
    color: color,
  );
}


// light fontstyle
TextStyle getLightStyle({
  fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    color,
    FontWeightManager.light,
  );
}

// bold fontstyle
TextStyle getBoldStyle({
  fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    color,
    FontWeightManager.bold,
  );
}

// medium fontstyle
TextStyle getMediumStyle({
  fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    color,
    FontWeightManager.medium,
  );
}