import 'package:jds_design/constants/fonts.dart';
import 'package:jds_design/enums/font.dart';

extension FontFamily on JDSFont {
  String get fontFamily {
    switch (this) {
      case JDSFont.lato:
        return Fonts.LATO;
        break;
      case JDSFont.lora:
        return Fonts.LORA;
        break;
      case JDSFont.roboto:
        return Fonts.ROBOTO;
        break;
      default:
        return Fonts.LATO;
        break;
    }
  }
}