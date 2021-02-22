import 'dart:ui' show Color;

import 'package:flutter/material.dart';

/// [Color] and [ColorSwatch] constants which represent JDS design's
/// [color palette].
///
/// Most swatches have colors from 100 to 900 in increments of one hundred, plus
/// the color 50. The smaller the number, the more pale the color. The greater
/// the number, the darker the color.
///
/// {@tool snippet}
///
/// To select a specific color from one of the swatches, index into the swatch
/// using an integer for the specific color desired, as follows:
///
/// ```dart
/// Color selection = Colors.green[400]; // Selects a mid-range green.
/// ```
/// {@end-tool}
///
/// {@tool snippet}
///
/// Each [ColorSwatch] constant is a color and can used directly. For example:
///
/// ```dart
/// Container(
///   color: Colors.blue, // same as Colors.blue[600] or Colors.blue.shade600
/// )
/// ```
/// {@end-tool}
///
class JDSColors {
  // This class is not meant to be instatiated or extended; this constructor
  // prevents instantiation and extension.
  // ignore: unused_element
  JDSColors._();

  /// Completely invisible.
  static const Color transparent = Color(0x00000000);

  /// Completely opaque black.
  static const Color black = Color(0xFF000000);

  /// Completely opaque white.
  static const Color white = Color(0xFFFFFFFF);

  /// The yellow primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.yellow[500],
  /// )
  /// ```
  /// {@end-tool}
  static const MaterialColor yellow = MaterialColor(
    _yellowPrimaryValue,
    <int, Color>{
      50: Color(0xFFFFF9E1),
      100: Color(0xFFFFEEB4),
      200: Color(0xFFFFE483),
      300: Color(0xFFFFDA4F),
      400: Color(_yellowPrimaryValue),
      500: Color(0xFFFFC800),
      600: Color(0xFFFFB900),
      700: Color(0xFFFFA600),
      800: Color(0xFFFF9500),
      900: Color(0xFFFF7500),
    },
  );
  static const int _yellowPrimaryValue = 0xFFFFD026;

  /// The green primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.green[500],
  /// )
  /// ```
  /// {@end-tool}
  static const MaterialColor green = MaterialColor(
    _greenPrimaryValue,
    <int, Color>{
      50: Color(0xFFE7F5EA),
      100: Color(0xFFC6E6CB),
      200: Color(0xFFA1D5AB),
      300: Color(0xFF7BC68A),
      400: Color(0xFF5EBA71),
      500: Color(0xFF399F4F),
      600: Color(0xFF41AE59),
      700: Color(_greenPrimaryValue),
      800: Color(0xFF267C39),
      900: Color(0xFF155D27),
    },
  );
  static const int _greenPrimaryValue = 0xFF2F8D44;

  /// The blue primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.blue[500],
  /// )
  /// ```
  /// {@end-tool}
  static const MaterialColor blue = MaterialColor(
    _bluePrimaryValue,
    <int, Color>{
      50: Color(0xFFE3F2FD),
      100: Color(0xFFBBDEFB),
      200: Color(0xFF90CAF9),
      300: Color(0xFF64B5F6),
      400: Color(0xFF42A5F5),
      500: Color(0xFF2196F3),
      600: Color(_bluePrimaryValue),
      700: Color(0xFF1976D2),
      800: Color(0xFF1565C0),
      900: Color(0xFF0D47A1),
    },
  );
  static const int _bluePrimaryValue = 0xFF009BDA;

  /// The pink primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.pink[500],
  /// )
  /// ```
  /// {@end-tool}
  static const MaterialColor pink = MaterialColor(
    _pinkPrimaryValue,
    <int, Color>{
      50: Color(0xFFFFE6EC),
      100: Color(0xFFFFBFCF),
      200: Color(0xFFFF96AF),
      300: Color(0xFFFF6C8F),
      400: Color(_pinkPrimaryValue),
      500: Color(0xFFFD355F),
      600: Color(0xFFFD355F),
      700: Color(0xFFD62A59),
      800: Color(0xFFC12357),
      900: Color(0xFF9D1951),
    },
  );
  static const int _pinkPrimaryValue = 0xFFE91E63;

  /// The red primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.red[400],
  /// )
  /// ```
  /// {@end-tool}
  static const MaterialColor red = MaterialColor(
    _redPrimaryValue,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(0xFFF44336),
      600: Color(0xFFE53935),
      700: Color(_redPrimaryValue),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );
  static const int _redPrimaryValue = 0xFFD32F2F;

  /// The purple primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.purple[400],
  /// )
  /// ```
  /// {@end-tool}
  static const MaterialColor purple = MaterialColor(
    _purplePrimaryValue,
    <int, Color>{
      50: Color(0xFFF3E5F5),
      100: Color(0xFFE1BEE7),
      200: Color(0xFFCE93D8),
      300: Color(0xFFBA68C8),
      400: Color(_purplePrimaryValue),
      500: Color(0xFF9C27B0),
      600: Color(0xFF8E24AA),
      700: Color(0xFF7B1FA2),
      800: Color(0xFF6A1B9A),
      900: Color(0xFF4A148C),
    },
  );
  static const int _purplePrimaryValue = 0xFFAB47BC;

  /// The grey primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.grey[400],
  /// )
  /// ```
  /// {@end-tool}
  static const MaterialColor grey = MaterialColor(
    _greyPrimaryValue,
    <int, Color>{
      50: Color(0xFFFAFAFA),
      100: Color(0xFFF5F5F5),
      200: Color(0xFFEEEEEE),
      300: Color(0xFFE0E0E0),
      400: Color(0xFFBDBDBD),
      500: Color(0xFF9E9E9E),
      600: Color(0xFF757575),
      700: Color(0xFF616161),
      800: Color(0xFF424242),
      900: Color(_greyPrimaryValue),
    },
  );
  static const int _greyPrimaryValue = 0xFF212121;

  /// The blue-grey primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.blueGrey[400],
  /// )
  /// ```
  /// {@end-tool}
  static const MaterialColor blueGrey = MaterialColor(
    _blueGreyPrimaryValue,
    <int, Color>{
      50: Color(0xFFE3E7ED),
      100: Color(0xFFB9C3D3),
      200: Color(0xFF8D9DB5),
      300: Color(0xFF627798),
      400: Color(0xFF415C84),
      500: Color(0xFF1A4373),
      600: Color(0xFF133C6B),
      700: Color(0xFF083461),
      800: Color(0xFF022B55),
      900: Color(_blueGreyPrimaryValue),
    },
  );
  static const int _blueGreyPrimaryValue = 0xFF001B3D;
}
