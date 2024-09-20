import 'package:flutter/material.dart';

const String fontFamily = 'Google Sans';

// Simple
// const TextStyle headlineTextStyle = TextStyle(
//     fontSize: 44, color: textPrimary, height: 1.2, fontFamily: fontFamily,);

// const TextStyle headlineSecondaryTextStyle = TextStyle(
//     fontSize: 28, color: textPrimary, height: 1.2, fontFamily: fontFamily,);

// const TextStyle bodyTextStyle = TextStyle(
//     fontSize: 16, color: textPrimary, height: 1.5, fontFamily: 'Roboto',);

// TextStyle bodyLinkTextStyle = bodyTextStyle.copyWith(color: primary);

const TextStyle buttonTextStyle = TextStyle(
    fontSize: 18, color: Colors.white, height: 1, fontFamily: fontFamily,);

// Carousel
const TextStyle titleLightTextStyle = TextStyle(
    fontSize: 80,
    color: Color(0xFF008AFE),
    fontFamily: fontFamily,
    shadows: [
      Shadow(
        color: Color(0x40000000),
        offset: Offset(1, 1),
        blurRadius: 2,
      ),
    ],);

const TextStyle titleDarkTextStyle = TextStyle(
    fontSize: 100,
    color: Colors.white,
    fontFamily: fontFamily,
    shadows: [
      Shadow(
        color: Color(0x40000000),
        offset: Offset(1, 1),
        blurRadius: 2,
      ),
    ],);
    


    const TextStyle subTitleLightTextStyle = TextStyle(
    fontSize: 60,
    color: Colors.black87,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
    // shadows: [
    //   Shadow(
    //     color: Color(0x40000000),
    //     offset: Offset(1, 1),
    //     blurRadius: 2,
    //   ),
    // ],
    );

const TextStyle subTitleDarkTextStyle = TextStyle(
    fontSize: 40,
    color: Colors.white70,
    fontWeight: FontWeight.w300,
    fontFamily: fontFamily,
    // shadows: [
    //   Shadow(
    //     color: Color(0x40000000),
    //     offset: Offset(1, 1),
    //     blurRadius: 2,
    //   ),
    // ],
    
    );

    const TextStyle textLightTextStyle = TextStyle(
    fontSize: 28,
    color: Colors.black87,
    fontWeight: FontWeight.w300,
    fontFamily: fontFamily,
    // shadows: [
    //   Shadow(
    //     color: Color(0x40000000),
    //     offset: Offset(1, 1),
    //     blurRadius: 2,
    //   ),
    // ],
    
    );

