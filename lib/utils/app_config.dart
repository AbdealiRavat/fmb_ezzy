import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

Text commonAppText(
    {required String text,
    required Color color,
    required double fontSize,
    required FontWeight fontWeight,
    TextAlign? textAlign}) {
  return Text(
    text,
    softWrap: true,
    textAlign: textAlign ?? TextAlign.left,
    style: GoogleFonts.inter(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}

TextStyle commonTextStyle(
    {required Color color,
    required double fontSize,
    required FontWeight fontWeight}) {
  return GoogleFonts.inter(
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}
