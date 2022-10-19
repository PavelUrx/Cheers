import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
        appBarTheme: const AppBarTheme(
          toolbarHeight: 0,
        ),
        //textTheme: const TextTheme(bodyText2: TextStyle(fontSize: 25)),
        fontFamily: GoogleFonts.kanit().fontFamily,
        primaryColor: Colors.white,
        buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: const Color.fromARGB(255, 36, 36, 36),
        ));
  }
}

/*
class GradientBackground {
  static BoxDecoration get darkTheme {
    return const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.black, Color.fromARGB(255, 51, 31, 91)]));
  }
}

class AppButtonTheme {
  static ButtonThemeData get darkTheme {
    return ButtonThemeData(
      buttonColor: const Color.fromARGB(255, 60, 60, 60),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
    );
  }
}
*/
class HeaderText {
  static TextStyle get textStyle {
    return TextStyle(fontFamily: GoogleFonts.kanit().fontFamily, fontSize: 25);
  }
}
