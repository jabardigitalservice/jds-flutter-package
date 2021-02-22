import 'package:flutter/material.dart';
import 'package:jds_design/enums/buttons.dart';
import 'package:jds_design/enums/variants.dart';
import 'package:jds_design/theme/colors.dart';
import 'package:jds_design/theme/text_theme.dart';

class WidgetButton extends StatelessWidget {
  const WidgetButton({
    Key key,
    this.buttonType = ButtonType.filled,
    this.variant,
    this.title,
    @required this.onPressed,
    this.onLongPress,
    this.isEnabled = true,
    this.color = JDSColors.white,
    this.background,
    this.borderColor = Colors.transparent,
    this.leading,
    this.trailing,
    this.icon,
  }) : super(key: key);

  /// button type
  final ButtonType buttonType;
  final Variant variant;
  final String title;
  final Widget icon;

  ///  * [enabled], which is true if the button is enabled.
  final VoidCallback onPressed;

  ///  * [enabled], which is true if the button is enabled.
  final VoidCallback onLongPress;

  /// default [true]
  final bool isEnabled;

  /// default text color [JDSColors.white]
  final Color color;

  /// default background color [JDSColors.green]
  final Color background;

  /// default background color [JDSColors.transparent]
  final Color borderColor;

  /// [Widget] often icon widget in all caps.
  final Widget leading;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    TextStyle _currentTextStyle = TextStyle(color: color);
    Color _currentBackground = background;
    Color _currentBorderColor = borderColor;

    // no padding for variant tertiary
    EdgeInsetsGeometry padding;

    // replace default theme with [type] Variant
    switch (variant) {
      case Variant.primary:
        _currentTextStyle = TextStyle(color: color ?? JDSColors.white);
        _currentBackground = _currentBackground ?? JDSColors.green;
        break;

      case Variant.danger:
        _currentTextStyle = TextStyle(color: color ?? JDSColors.white);
        _currentBackground = _currentBackground ?? JDSColors.red;
        break;

      case Variant.secondary:
        _currentTextStyle = TextStyle(color: color ?? JDSColors.green);
        _currentBackground = _currentBackground ?? JDSColors.green[50];
        _currentBorderColor = JDSColors.green[700];
        break;

      case Variant.tertiary:
        _currentTextStyle = TextStyle(color: color ?? JDSColors.green);
        _currentBackground = _currentBackground ?? JDSColors.green[50];
        padding = const EdgeInsets.all(0);
        break;
      default:
    }

    return FlatButton(
      key: key,
      color: _currentBackground,
      minWidth: 20,
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      materialTapTargetSize: MaterialTapTargetSize
          .shrinkWrap, //limits the touch area to the button area
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: _currentBorderColor),
      ),
      child: icon == null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                    padding: const EdgeInsets.only(right: 8), child: leading),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: _currentTextStyle.merge(JDSTextTheme.button2
                      .copyWith(fontWeight: FontWeight.bold)),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 8), child: trailing),
              ],
            )
          : icon,
      onPressed: isEnabled ? onPressed : null,
      onLongPress: onLongPress,
    );
  }
}
