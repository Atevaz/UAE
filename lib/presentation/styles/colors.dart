import 'package:flutter/material.dart';

class AppColor {
  static Color red = HexColor.fromHex('#CE1126');
  static Color white = HexColor.fromHex('FFFFFF');
  static Color black = HexColor.fromHex('000000');
  static Color grey = HexColor.fromHex('2D2D2D');
  static Color dropShadow = HexColor.fromHex('606470');
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    //* * to check the opacity of the color
    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString;
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
