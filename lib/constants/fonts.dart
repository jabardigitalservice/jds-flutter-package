class Fonts {

  /// JDS Design System uses 3 Font Types
  /// 2 Sans Serif (Lato and Roboto)
  /// 1 Serif (Lora)
  ///
  /// This static constant refers to the font family name of the custom fonts
  /// that are declared in the `pubspec.yaml` file as shown below:
  ///
  /// ```yaml
  /// flutter:
  ///   fonts:
  ///     - family: Lato
  ///       fonts:
  ///         - asset: assets/fonts/Lato-Regular.ttf
  ///         - asset: assets/fonts/Lato-Italic.ttf
  ///           style: italic
  ///         - asset: assets/fonts/Lato-Thin.ttf
  ///           weight: 100
  ///         - asset: assets/fonts/Lato-Light.ttf
  ///           weight: 300
  ///         - asset: assets/fonts/Lato-Bold.ttf
  ///           weight: 700
  ///         - asset: assets/fonts/Lato-Black.ttf
  ///           weight: 900
  ///
  ///     - family: Roboto
  ///       fonts:
  ///         - asset: assets/fonts/Roboto-Regular.ttf
  ///         - asset: assets/fonts/Roboto-Italic.ttf
  ///           style: italic
  ///         - asset: assets/fonts/Roboto-Thin.ttf
  ///           weight: 100
  ///         - asset: assets/fonts/Roboto-Light.ttf
  ///           weight: 300
  ///         - asset: assets/fonts/Roboto-Medium.ttf
  ///           weight: 500
  ///         - asset: assets/fonts/Roboto-Bold.ttf
  ///           weight: 700
  ///         - asset: assets/fonts/Roboto-Black.ttf
  ///           weight: 900
  ///
  ///     - family: Lora
  ///       fonts:
  ///         - asset: assets/fonts/Lora-Regular.ttf
  ///         - asset: assets/fonts/Lora-Italic.ttf
  ///           style: italic
  ///         - asset: assets/fonts/Lora-Medium.ttf
  ///           weight: 500
  ///         - asset: assets/fonts/Lora-Bold.ttf
  ///           weight: 700
  /// ```
  ///
  /// To select a custom font, create [TextStyle] using the [fontFamily]
  /// argument as shown in the example below:
  ///
  /// {@tool snippet}
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/painting/text_style_custom_fonts.png)
  ///
  /// ```dart
  /// const TextStyle(fontFamily: Fonts.LATO)
  /// ```
  /// {@end-tool}
  ///

  static const String LATO = 'Lato';
  static const String ROBOTO = 'Roboto';
  static const String LORA = 'Lora';

}