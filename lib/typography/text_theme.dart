import 'package:flutter/material.dart';
import 'package:jds_design/constants/fonts.dart';
import 'package:jds_design/enums/font.dart';
import 'package:jds_design/extensions/font_family.dart';
import 'package:jds_design/jds_design.dart';

/// Define the default JDS TextTheme. Use this to specify the default
/// text styling for headlines, titles, bodies of text, and more.
///
/// {@tool snippet}
/// Applying the style in this way creates header text.
/// ```dart
/// Text(
///   'We need headline 1 style.',
///   style: JTextTheme.h1(),
/// )
/// ```
/// {@end-tool}
///
/// ### Change Fonts
///
/// To select a custom font, create [JDSTextTheme] with style using the [fontFamily]
/// argument as shown in the example below:
///
/// {@tool snippet}
///
/// ```dart
/// Text(
///   'Change the font to Lora',
///   style: JTextTheme.h1(fontFamily: JFont.lora),
/// )
/// ```
/// {@end-tool}
///
/// ### Opacity and Color
///
/// {@tool snippet}
/// Each line here is progressively more opaque. The base color is
/// [material.Colors.black], and [Color.withOpacity] is used to create a
/// derivative color with the desired opacity.
///
/// ![This results in three lines of text that go from lighter to darker in color.](https://flutter.github.io/assets-for-api-docs/assets/painting/text_style_opacity_and_color.png)
///
/// ```dart
/// RichText(
///   text: TextSpan(
///     children: <TextSpan>[
///       TextSpan(
///         text: "You don't have the votes.\n",
///         style: JTextTheme.h6(color: Colors.black.withOpacity(0.6)),
///       ),
///       TextSpan(
///         text: "You don't have the votes!\n",
///         style: JTextTheme.h6(color: Colors.black.withOpacity(0.8)),
///       ),
///       TextSpan(
///         text: "You're gonna need congressional approval and you don't have the votes!\n",
///         style: JTextTheme.h6(color: Colors.black),
///       ),
///     ],
///   ),
/// )
/// ```
/// {@end-tool}
///
class JDSTextTheme {
  /// [fontFamily], property to determine of the font to use when painting the text (e.g., Lato).
  /// When [fontFamily] is null or not provided, then the Lato font will be used as the default font.
  ///
  /// [color], property to determine the color to use when painting the text.
  /// [fontStyle], property to determine the typeface variant to use when drawing the letters (e.g., italics).
  /// [backgroundColor], property to determine the color to use as the background for the text.

  /// Specify the default text styling for headlines 1
  static h1({JDSFont fontFamily, FontStyle fontStyle, Color color, Color backgroundColor}) {
    return TextStyle(
        fontFamily: fontFamily.fontFamily,
        fontSize: 49.0,
        height: 1.618,
        color: color,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        package: 'jds_design');
  }

  /// Use this to specify the default text styling for headlines 2
  static h2({JDSFont fontFamily, FontStyle fontStyle, Color color, Color backgroundColor}) {
    return TextStyle(
        fontFamily: fontFamily.fontFamily,
        fontSize: 41.0,
        height: 1.618,
        color: color,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        package: 'jds_design');
  }

  /// Use this to specify the default text styling for headlines 3
  static h3({JDSFont fontFamily, FontStyle fontStyle, Color color, Color backgroundColor}) {
    return TextStyle(
        fontFamily: fontFamily.fontFamily,
        fontSize: 34.0,
        height: 1.618,
        color: color,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        package: 'jds_design');
  }

  /// Specify the default text styling for headlines 4
  static h4({JDSFont fontFamily, FontStyle fontStyle, Color color, Color backgroundColor}) {
    return TextStyle(
        fontFamily: fontFamily.fontFamily,
        fontSize: 28.0,
        height: 1.618,
        color: color,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        package: 'jds_design');
  }

  /// Specify the default text styling for headlines 5
  static h5({JDSFont fontFamily, FontStyle fontStyle, Color color, Color backgroundColor}) {
    return TextStyle(
        fontFamily: fontFamily.fontFamily,
        fontSize: 23.0,
        height: 1.618,
        color: color,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        package: 'jds_design');
  }

  /// Specify the default text styling for headlines 6
  static h6({JDSFont fontFamily, FontStyle fontStyle, Color color, Color backgroundColor}) {
    return TextStyle(
        fontFamily: fontFamily.fontFamily,
        fontSize: 19.0,
        height: 1.618,
        color: color,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        package: 'jds_design');
  }

  /// Specify the default text styling for subtitle 2
  static subtitle1({JDSFont fontFamily, FontStyle fontStyle, Color color, Color backgroundColor}) {
    return TextStyle(
        fontFamily: fontFamily.fontFamily,
        fontSize: 16.0,
        height: 1.618,
        color: color,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        package: 'jds_design');
  }

  /// Specify the default text styling for subtitle 2
  static subtitle2({JDSFont fontFamily, FontStyle fontStyle, Color color, Color backgroundColor}) {
    return TextStyle(
        fontFamily: fontFamily.fontFamily,
        fontSize: 13.0,
        height: 1.618,
        color: color,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        package: 'jds_design');
  }

  /// Specify the default text styling for body 1
  static body1({FontStyle fontStyle, Color color, Color backgroundColor}) {
    return TextStyle(
        fontFamily: Fonts.LATO,
        fontSize: 16.0,
        height: 1.618,
        color: color,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        package: 'jds_design');
  }

  /// Specify the default text styling for body 2
  static body2({FontStyle fontStyle, Color color, Color backgroundColor}) {
    return TextStyle(
        fontFamily: Fonts.LATO,
        fontSize: 13.0,
        height: 1.618,
        color: color,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        package: 'jds_design');
  }

  /// Specify the default text styling for endnote
  static endNote({FontStyle fontStyle, Color color, Color backgroundColor}) {
    return TextStyle(
        fontFamily: Fonts.LATO,
        fontSize: 11.0,
        height: 1.618,
        color: color,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        package: 'jds_design');
  }

  /// Specify the default text styling for footnote
  static footNote({FontStyle fontStyle, Color color, Color backgroundColor}) {
    return TextStyle(
        fontFamily: Fonts.LATO,
        fontSize: 11.0,
        height: 1.618,
        color: color,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        package: 'jds_design');
  }
}
