import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final TextTheme textTheme = TextTheme(
  headline1: GoogleFonts.ubuntu(
      fontSize: 97, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  // headline2: GoogleFonts.ubuntu(
  //     fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  headline2: GoogleFonts.ubuntu(fontSize: 48, fontWeight: FontWeight.w400),
  headline3: GoogleFonts.montserrat(
      fontSize: 36,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.25,
      height: 1),

  headline4: GoogleFonts.montserrat(
      fontSize: 34,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.25,
      height: 1),

  headline5: GoogleFonts.montserrat(
      fontSize: 30,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.25,
      height: 1.2),
  headline6: GoogleFonts.ubuntu(
      fontSize: 24, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  subtitle1: GoogleFonts.ubuntu(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  subtitle2: GoogleFonts.ubuntu(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyText1: GoogleFonts.ubuntu(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyText2: GoogleFonts.ubuntu(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  button: GoogleFonts.ubuntu(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  caption: GoogleFonts.ubuntu(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  overline: GoogleFonts.ubuntu(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);
