import 'package:flutter/material.dart';
import 'package:jds_design/enums/font.dart';
import 'package:jds_design/extensions/font_family.dart';

class JHeader {
  /// Creates a header text style.
  ///
  /// The color to use when painting the text.
  final Color color;


  const JHeader(this.color);

  static h1({JFont fontFamily}) {
    return TextStyle(
        fontFamily: fontFamily.fontFamily,
        fontSize: 49.0,
        height: 1.618,
        backgroundColor: Colors.red,
        package: 'jds_design');
  }

  static h2({JFont fontFamily}) {
    return TextStyle(
        fontFamily: fontFamily.fontFamily,
        fontSize: 41.0,
        height: 1.618,
        backgroundColor: Colors.red,
        package: 'jds_design');
  }

  static h3({JFont fontFamily}) {
    return TextStyle(
        fontFamily: fontFamily.fontFamily,
        fontSize: 34.0,
        height: 1.618,
        backgroundColor: Colors.red,
        package: 'jds_design');
  }

  static h4({JFont fontFamily}) {
    return TextStyle(
        fontFamily: fontFamily.fontFamily,
        fontSize: 28.0,
        height: 1.618,
        backgroundColor: Colors.red,
        package: 'jds_design');
  }

  static h5({JFont fontFamily}) {
    return TextStyle(
        fontFamily: fontFamily.fontFamily,
        fontSize: 23.0,
        height: 1.618,
        backgroundColor: Colors.red,
        package: 'jds_design');
  }

  static h6({JFont fontFamily}) {
    return TextStyle(
        fontFamily: fontFamily.fontFamily,
        fontSize: 19.0,
        height: 1.618,
        backgroundColor: Colors.red,
        package: 'jds_design');
  }
}
