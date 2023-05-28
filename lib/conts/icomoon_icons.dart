// Place fonts/icomoon.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: icomoon
//      fonts:
//       - asset: fonts/icomoon.ttf
import 'package:flutter/widgets.dart';

class Icomoon {
  Icomoon._();

  static const String _fontFamily = 'icomoon';

  static const IconData book = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData save_icon = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData rounded_stars =
      IconData(0xe902, fontFamily: _fontFamily);
  static const IconData bx_log_out_circle =
      IconData(0xe903, fontFamily: _fontFamily);
  static const IconData fluent_arrow_growth_24_filled =
      IconData(0xe904, fontFamily: _fontFamily);
}
