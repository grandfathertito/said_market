import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:said/core/colors_app.dart';

class TextAppStyle {
  TextStyle titleAppStyle = GoogleFonts.nunito(
    textStyle: TextStyle(
      color: ColorsApp().mainFontColor,
      fontSize: 25.sp,
      fontWeight: FontWeight.w700
      )
      );
  TextStyle titleMainSection = GoogleFonts.nunito(
    textStyle: TextStyle(
      color: ColorsApp().mainFontColor,
      fontSize: 18.sp,
      fontWeight: FontWeight.w400
    )
  );
  TextStyle titleCard = GoogleFonts.nunito(
    textStyle: TextStyle(
      color: ColorsApp().mainFontColor,
      fontSize: 20.sp,
      fontWeight: FontWeight.w500
    )
  );
  TextStyle subTitleCard = GoogleFonts.nunito(
    textStyle: TextStyle(
      color: ColorsApp().mainFontColor,
      fontSize: 12.sp,
      fontWeight: FontWeight.w400
    )
  );
}