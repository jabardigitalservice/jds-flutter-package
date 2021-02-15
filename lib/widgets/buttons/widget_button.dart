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
  final VoidCallback onPressed;

  /// default [true]
  final bool isEnabled;

  /// default color [JDSColors.white]
  final Color color;

  /// default background [JDSColors.green]
  final Color background;

  final Color borderColor;
  final Widget leading;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    TextStyle currentTextStyle = TextStyle(color: color);
    Color currentBackground = background;
    Color currentBorderColor = borderColor;

    /// no padding for variant tertiary
    EdgeInsetsGeometry padding;

    /// replace default with [type] Variant
    switch (variant) {
      case Variant.primary:
        currentTextStyle = TextStyle(color: color ?? JDSColors.white);
        currentBackground = currentBackground ?? JDSColors.green;
        break;

      case Variant.danger:
        currentTextStyle = TextStyle(color: color ?? JDSColors.white);
        currentBackground = currentBackground ?? JDSColors.red;
        break;

      case Variant.secondary:
        currentTextStyle = TextStyle(color: color ?? JDSColors.green);
        currentBackground = currentBackground ?? JDSColors.green[50];
        currentBorderColor = JDSColors.green[700];
        break;

      case Variant.tertiary:
        currentTextStyle = TextStyle(color: color ?? JDSColors.green);
        currentBackground = currentBackground ?? JDSColors.green[50];
        padding = const EdgeInsets.all(0);
        break;
      default:
    }

    return FlatButton(
      key: key,
      color: currentBackground,
      minWidth: 20,
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      materialTapTargetSize: MaterialTapTargetSize
          .shrinkWrap, //limits the touch area to the button area
      onPressed: isEnabled ? onPressed : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: currentBorderColor),
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
                  style: currentTextStyle.merge(JDSTextTheme.button2
                      .copyWith(fontWeight: FontWeight.bold)),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 8), child: trailing),
              ],
            )
          : icon,
    );
  }
}
