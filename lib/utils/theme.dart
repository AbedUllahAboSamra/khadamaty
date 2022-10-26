import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


final lightTheme = ThemeData(
  primaryColor: Color(0xFFFFC20F),
  cardColor: Colors.white,
  textTheme: TextTheme(
    headline1: GoogleFonts.poppins(
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headline2: GoogleFonts.poppins(
      fontSize: 22.sp,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    headline3: GoogleFonts.poppins(
      fontSize: 20.sp,
      color: Colors.black,
    ),

    headline4: GoogleFonts.poppins(
      fontSize: 18.sp,
      color: Colors.black,
    ),
    headline5: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 16.sp,
    ),
    bodyText1: GoogleFonts.poppins(fontSize: 18.sp, color: Colors.black),
    bodyText2: GoogleFonts.poppins(
      fontSize: 16.sp,
      color: Colors.black,
    ),
    headline6: GoogleFonts.poppins(
        fontSize: 14.sp,
        color: const Color(0xFF484848), fontWeight: FontWeight.w300),
  ),
  inputDecorationTheme:const InputDecorationTheme(
    border:  UnderlineInputBorder(

      borderSide: BorderSide(
        color: Color(0xFFABABAB)
      ),
    ),
    focusedBorder:  UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFFABABAB),
      ),
    ),

  ),
  iconTheme: const IconThemeData(
    color: Color(0xFF363837),
    size: 24,
  ),


);

