import 'package:flutter/material.dart';
import 'package:jds_design/constants/fonts.dart';
import 'package:jds_design/enums/font.dart';
import 'package:jds_design/extensions/font_family.dart';
import 'package:jds_design/jds_design.dart';

/// Define the default JDS TextTheme [typography]. Use this to specify the default
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
  static const TextStyle h1 = TextStyle(
      fontFamily: JDSFonts.LATO, fontSize: 49.0, package: 'jds_design');

  /// Use this to specify the default text styling for headlines 2
  static const TextStyle h2 = TextStyle(
      fontFamily: JDSFonts.LATO, fontSize: 41.0, package: 'jds_design');

  /// Use this to specify the default text styling for headlines 3
  static const TextStyle h3 = TextStyle(
      fontFamily: JDSFonts.LATO, fontSize: 34.0, package: 'jds_design');

  /// Specify the default text styling for headlines 4
  static const TextStyle h4 = TextStyle(
      fontFamily: JDSFonts.LATO, fontSize: 28.0, package: 'jds_design');

  /// Specify the default text styling for headlines 5
  static const TextStyle h5 = TextStyle(
      fontFamily: JDSFonts.LATO, fontSize: 23.0, package: 'jds_design');

  /// Specify the default text styling for headlines 6
  static const TextStyle h6 = TextStyle(
      fontFamily: JDSFonts.LATO, fontSize: 19.0, package: 'jds_design');

  /// Specify the default text styling for subtitle 2
  static const TextStyle subtitle1 = TextStyle(
      fontFamily: JDSFonts.ROBOTO, fontSize: 16.0, package: 'jds_design');

  /// Specify the default text styling for subtitle 2
  static const TextStyle subtitle2 = TextStyle(
      fontFamily: JDSFonts.ROBOTO, fontSize: 14.0, package: 'jds_design');

  /// Specify the default text styling for body 1
  static const TextStyle body1 = TextStyle(
      fontFamily: JDSFonts.LATO, fontSize: 16.0, package: 'jds_design');

  /// Specify the default text styling for body 2
  static const TextStyle body2 = TextStyle(
      fontFamily: JDSFonts.LATO, fontSize: 14.0, package: 'jds_design');

  /// Specify the default text styling for button 1
  static const TextStyle button1 = TextStyle(
      fontFamily: JDSFonts.LATO, fontSize: 16.0, package: 'jds_design');

  /// Specify the default text styling for button 2
  static const TextStyle button2 = TextStyle(
      fontFamily: JDSFonts.LATO, fontSize: 14.0, package: 'jds_design');

  /// Specify the default text styling for endnote
  static const TextStyle endNote = TextStyle(
      fontFamily: JDSFonts.LATO, fontSize: 12.0, package: 'jds_design');

  /// Specify the default text styling for footnote
  static const TextStyle footNote = TextStyle(
      fontFamily: JDSFonts.LATO, fontSize: 11.0, package: 'jds_design');

  /// Specify the default text styling for hyperlink 1
  static const TextStyle hyperlink1 = TextStyle(
      fontFamily: JDSFonts.LATO,
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,
      package: 'jds_design');

  /// Specify the default text styling for hyperlink 2
  static const TextStyle hyperlink2 = TextStyle(
      fontFamily: JDSFonts.LATO,
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,
      package: 'jds_design');
}
