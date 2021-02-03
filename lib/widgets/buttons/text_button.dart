import 'package:flutter/material.dart';
import 'package:jds_design/enums/buttons.dart';
import 'package:jds_design/jds_design.dart';
import 'package:jds_design/theme/text_theme.dart';

/// {@tool snippet}
///
/// This example shows a [JDSButton] that is normally white-on-blue,
///
/// ![A JDSButton with white text on a blue background](https://flutter.github.io/assets-for-api-docs/assets/material/flat_button_properties.png)
///
/// ```dart
///    JDSButton(
///      title: 'primary',
///      onPressed: () {},
///      color: Colors.white,
///      background: JDSColors.green[700],
///   )
/// ```
/// {@end-tool}
///
class JDSButton extends StatelessWidget {
  /// button type
  final ButtonType buttonType;
  final String title;
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

  /// default button filled
  const JDSButton({
    Key key,
    this.buttonType = ButtonType.filled,
    @required this.title,
    @required this.onPressed,
    this.isEnabled = true,
    this.color = JDSColors.white,
    this.background = JDSColors.green,
    this.borderColor = Colors.transparent,
    this.leading,
    this.trailing,
  }) : super(key: key);

  /// default button filled
  const JDSButton.outline({
    Key key,
    @required this.title,
    @required this.onPressed,
    @required this.borderColor,
    this.isEnabled = true,
    this.color = JDSColors.white,
    this.background = JDSColors.green,
    this.leading,
    this.trailing,
  })  : this.buttonType = ButtonType.outline,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (buttonType) {
      case ButtonType.outline:
        print('outline');

        break;
      default:
    }

    return FlatButton(
      key: key,
      color: background,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      onPressed: isEnabled ? onPressed : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: borderColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(padding: const EdgeInsets.only(right: 8), child: leading),
          Text(
            title,
            textAlign: TextAlign.center,
            style: JDSTextTheme.button2
                .copyWith(fontWeight: FontWeight.bold, color: color),
          ),
          Padding(padding: const EdgeInsets.only(left: 8), child: trailing),
        ],
      ),
    );
  }
}
