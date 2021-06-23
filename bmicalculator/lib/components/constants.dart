import 'package:flutter/material.dart';

const MaterialColor KisPrimaryColor = MaterialColor(
  0xFF793E6C,
  const <int, Color>{
    50: const Color(0xFF793E4C),
    100: const Color(0xFF793E7C),
  },
);
const Color KisDarkColor = Colors.black;
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
