import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {

static  TextStyle fontBold (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w700,fontSize: 18);

}
static  TextStyle fontMedium (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w500,fontSize: 16);

}

static  TextStyle fontNormal (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w400,fontSize: 14);

}

}