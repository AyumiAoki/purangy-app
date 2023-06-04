import 'package:flutter/material.dart';

Map<int, Color> primaryOpacity = {
  50: const Color.fromRGBO(211, 97, 113, .1),
  100: const Color.fromRGBO(211, 97, 113, .2),
  200: const Color.fromRGBO(211, 97, 113, .3),
  300: const Color.fromRGBO(211, 97, 113, .4),
  400: const Color.fromRGBO(211, 97, 113, .5),
  500: const Color.fromRGBO(211, 97, 113, .6),
  600: const Color.fromRGBO(211, 97, 113, .7),
  700: const Color.fromRGBO(211, 97, 113, .8),
  800: const Color.fromRGBO(211, 97, 113, .9),
  900: const Color.fromRGBO(211, 97, 113, 1),
};

abstract class CustomColors {
  static MaterialColor primaryColor = MaterialColor(0xFFD36171, primaryOpacity);
}
