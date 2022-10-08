// Place fonts/Medical.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: Medical
//      fonts:
//       - asset: fonts/Medical.ttf
import 'package:flutter/widgets.dart';

class Medical {
  Medical._();

  static const String _fontFamily = 'Medical';

  static const IconData medical_capsual = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData medical_lab = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData medical_eyecare = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData medical_dental = IconData(0xe903, fontFamily: _fontFamily);
  static const IconData medical_first_aid = IconData(0xe904, fontFamily: _fontFamily);
  static const IconData medical_dna = IconData(0xe905, fontFamily: _fontFamily);
}
