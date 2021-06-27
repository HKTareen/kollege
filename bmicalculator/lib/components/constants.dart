import 'package:flutter/material.dart';

const MaterialColor KisPrimaryColor = MaterialColor(
  0xFF793E6C,
  const <int, Color>{
    50: const Color(0xFF793E4C),
    100: const Color(0xFF650f43),
  },



);

const MaterialColor KisAuctionPrimaryClr = MaterialColor(
  0xFFd1d1d1,
  const <int, Color>{
    300: const Color(0xFFc3c3c3),//box background
    100: const Color(0xFF8e8e8e),//text color
    200: const Color(0xFF656565),//arrow color
    400: const Color(0xFF656565),// icon color
    500: const Color(0xFFc3a936),// focus color
  },



);
const Color KisDarkColor = Colors.black;
const Color KisGray = Colors.grey;
const Color KisLightColor = Colors.white;
const TextStyle heading =
    TextStyle(color: KisLightColor, fontSize: 29, fontWeight: FontWeight.bold);
const TextStyle subHeading = TextStyle(
  color: KisLightColor,
  fontSize: 19,
);
const TextStyle subject = TextStyle(
  color: KisDarkColor,
  fontSize: 22,fontWeight: FontWeight.bold
);
const TextStyle paragraph = TextStyle(
  color: KisDarkColor,
  fontSize: 15,
  fontWeight: FontWeight.w700
);
const TextStyle focusParagraph =
    TextStyle(color: KisLightColor, fontSize: 15, fontWeight: FontWeight.bold);
const TextStyle boldPrimary = TextStyle(
    color: KisPrimaryColor,
    fontSize: 22,fontWeight: FontWeight.bold
);

const TextStyle boldSubtitle = TextStyle(
    color: KisDarkColor,
    fontSize: 16,fontWeight: FontWeight.bold
);
const TextStyle grayValue = TextStyle(
    color: KisGray,
    fontSize: 16,fontWeight: FontWeight.bold
);
const TextStyle boldPrimaryText = TextStyle(
    color: KisPrimaryColor,
    fontSize: 18,fontWeight: FontWeight.bold
);