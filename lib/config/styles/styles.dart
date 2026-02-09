import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
static  TextStyle largeTextRegular (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w400,fontSize: 20);

}
static  TextStyle largeTextSemiBold (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w600,fontSize: 20);

}
static  TextStyle font18Normal (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w400,fontSize: 18);

}
static  TextStyle fontBold (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w700,fontSize: 18);

}
static  TextStyle font16Regular (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w400,fontSize: 16);

}
static  TextStyle font16Medium (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w500,fontSize: 16);

}
static  TextStyle font16SemiBold (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w600,fontSize: 16);

}
static  TextStyle font16Bold (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w700,fontSize: 16);

}
static  TextStyle fontNormal (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w400,fontSize: 14);

}
static  TextStyle smallTextMedium (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w500,fontSize: 14);

}
static  TextStyle smallTextSemiBold (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w600,fontSize: 14);

}
static  TextStyle font14Bold (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w700,fontSize: 14);

}
static  TextStyle fontSmallNormal (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w400,fontSize: 12);

}
static  TextStyle fontSmallSemiBold (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w600,fontSize: 12);

}
static  TextStyle fontSmallBold (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w700,fontSize: 12);

}
}