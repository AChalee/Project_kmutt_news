import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kGrey1 = Color(0xFF9F9f9f);
const kGrey2 = Color(0xFF6D6D6D);
const kGrey3 = Color(0XFFEAEAEA);
const kBlack = Color(0xFF1C1C1C);

var kNonActiveTabStyle =
    GoogleFonts.prompt(textStyle: TextStyle(fontSize: 18.0, color: kGrey1));

var kActiveTabStyle = GoogleFonts.prompt(
  textStyle:
      TextStyle(fontSize: 16.0, color: kGrey1, fontWeight: FontWeight.bold),
);

var kCategoryTitle = GoogleFonts.prompt(
  textStyle:
      TextStyle(fontSize: 16.0, color: kGrey2, fontWeight: FontWeight.bold),
);

var kDetailContent =
    GoogleFonts.prompt(textStyle: TextStyle(fontSize: 16.0, color: kGrey2));

var kTitleCard = GoogleFonts.prompt(
    textStyle:
        TextStyle(fontSize: 16.0, color: kBlack, fontWeight: FontWeight.bold));
