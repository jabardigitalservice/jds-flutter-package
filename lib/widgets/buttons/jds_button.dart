import 'package:flutter/material.dart';
import 'package:jds_design/enums/buttons.dart';
import 'package:jds_design/enums/variants.dart';
import 'package:jds_design/jds_design.dart';
import 'package:jds_design/widgets/buttons/widget_button.dart';

/// {@tool snippet}
///
/// This example shows a [JDSButton] that is normally white-on-green
///
/// ```dart
///    JDSButton(
///      title: 'primary',
///      variant: Variant.primary,
///      onPressed: () {},
///   )
/// ```
/// {@end-tool}
///
class JDSButton extends WidgetButton {
  /// default button filled
  const JDSButton({
    Key key,
    ButtonType buttonType = ButtonType.filled,
    Variant variant,
    @required String title,
    @required VoidCallback onPressed,
    bool isEnabled = true,
    Color color,
    Color background,
    Widget leading,
    Widget trailing,
  }) : super(
          key: key,
          buttonType: buttonType,
          variant: variant,
          title: title,
          onPressed: onPressed,
          isEnabled: isEnabled,
          color: color,
          background: background,
          leading: leading,
          trailing: trailing,
        );

  /// button outline
  const JDSButton.outline({
    Key key,
    ButtonType buttonType = ButtonType.outline,
    Variant variant,
    @required String title,
    @required VoidCallback onPressed,
    bool isEnabled = true,
    Color color,
    Color background,
    Color borderColor = Colors.transparent,
    Widget leading,
    Widget trailing,
  }) : super(
          key: key,
          buttonType: buttonType,
          variant: variant,
          title: title,
          onPressed: onPressed,
          isEnabled: isEnabled,
          color: color,
          background: background,
          borderColor: borderColor,
          leading: leading,
          trailing: trailing,
        );

  /// button icon only
  const JDSButton.icon({
    Key key,
    ButtonType buttonType = ButtonType.icon,
    Variant variant,
    @required VoidCallback onPressed,
    bool isEnabled = true,
    Color color,
    Color background,
    Color borderColor = Colors.transparent,
    @required Widget icon,
  }) : super(
          key: key,
          buttonType: buttonType,
          variant: variant,
          onPressed: onPressed,
          isEnabled: isEnabled,
          color: color,
          background: background,
          borderColor: borderColor,
          icon: icon,
        );
}
