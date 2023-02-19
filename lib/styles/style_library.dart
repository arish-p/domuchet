import 'package:flutter/material.dart';

class StyleLibrary{

  static const mainRadius = 10.0;
  static StyleFonts fonts =  StyleFonts();
  static ColorStyle color = ColorStyle();
  static FieldStyle field = FieldStyle();
  static PaddingStyle padding = PaddingStyle();

}

class StyleFonts{
   static ColorStyle color = ColorStyle();

    final  header = TextStyle(
    color: color.slateBlue,
    fontSize: 23,
    fontWeight: FontWeight.w600);

    final hint = TextStyle(
        color: color.slateBlue,
        fontSize: 20,
        fontWeight: FontWeight.w300);

   final button = TextStyle(
       color: color.slateBlue,
       fontSize: 20,
       fontWeight: FontWeight.w400);

   final small = TextStyle(
      color: color.slateBlue,
      fontSize: 12,
      fontWeight: FontWeight.w400);
}

class ColorStyle{
  final slateBlue = const Color.fromARGB(255, 98, 113, 241);
  final violet = const Color.fromARGB(255, 194, 184, 255);
  final Gradient gradient = const LinearGradient(
      colors: [Color(0xff5d84f4), Color(0xff2953e8)],
      begin: FractionalOffset(0.0, 0.0),
      end: FractionalOffset(0.5, 0.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp);
}

class FieldStyle{

  static StyleFonts fonts = StyleFonts();
  static ColorStyle color = ColorStyle();

  final mainInputField = InputDecoration(
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: color.violet,
        width: 2
      ),
      borderRadius: BorderRadius.circular(StyleLibrary.mainRadius),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
          color: color.violet,
          width: 2,
      ),
      borderRadius: BorderRadius.circular(StyleLibrary.mainRadius),
    ),
    hintStyle: fonts.hint,

  );
}

class ButtonStyles{
  final elevatedButtonStyle = const ElevatedButtonThemeData(
    style: ButtonStyle(

    )
  );
}

class PaddingStyle{

  final double height = 20;
  final double width = 25;

  final mainTopPadding = const EdgeInsets.only(top: 20);
  final mainBottomPadding = const EdgeInsets.only(bottom: 20);
  final mainLeftPadding = const EdgeInsets.only(left: 25);
  final mainRightPadding = const EdgeInsets.only(right: 25);
  final mainVerticalPadding = const EdgeInsets.symmetric(vertical: 20);
  final mainHorizontalPadding = const EdgeInsets.symmetric(horizontal: 25);
  final mainAllPadding = const EdgeInsets.symmetric(vertical: 20, horizontal: 25);
}