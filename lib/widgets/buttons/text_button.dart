import 'package:flutter/material.dart';
import 'package:jds_design/jds_design.dart';
import 'package:jds_design/theme/text_theme.dart';

class JdsTextButton extends StatelessWidget {
  const JdsTextButton({
    final Key key,
    @required final String title,
    @required final VoidCallback onPressed,

    /// default [true]
    final bool isEnabled = true,

    /// default color [JDSColors.white]
    final Color color = JDSColors.white,

    /// default background [JDSColors.green]
    final Color background = JDSColors.green,
  })  : assert(title != null),
        assert(onPressed != null),
        _key = key,
        _title = title,
        _onPressed = onPressed,
        _isEnabled = isEnabled,
        _color = color,
        _bg = background;

  final Key _key;
  final String _title;
  final VoidCallback _onPressed;
  final bool _isEnabled;
  final Color _color;
  final Color _bg;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      key: _key,
      color: _bg,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      onPressed: _isEnabled ? _onPressed : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        _title,
        textAlign: TextAlign.center,
        style: JDSTextTheme.button2
            .copyWith(fontWeight: FontWeight.bold, color: _color),
      ),
    );
  }
}
