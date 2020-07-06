import 'package:jds_design/constants/fonts.dart';
import 'package:jds_design/enums/font.dart';

extension FontFamily on JFont {
  String get fontFamily {
    switch (this) {
      case JFont.lato:
        return Fonts.LATO;
        break;
      case JFont.lora:
        return Fonts.LORA;
        break;
      case JFont.roboto:
        return Fonts.ROBOTO;
        break;
      default:
        return Fonts.LATO;
        break;
    }
  }
}