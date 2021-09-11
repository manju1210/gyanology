

import 'package:flutter/material.dart';

buildTextWidget(String title,Color textColor,{double textSize=14.0,FontWeight fontWeight=FontWeight.normal,TextAlign align=TextAlign.justify,double letterSpacing=0.0,FontStyle fontStyle=FontStyle.normal,TextDecoration textDecoration = TextDecoration.none,int maxLines=5}){
  return Text(title,style: TextStyle(fontSize: textSize,color: textColor,fontWeight: fontWeight,letterSpacing: letterSpacing,fontStyle: fontStyle,decoration: textDecoration),maxLines: maxLines,
    textAlign: align,);
}