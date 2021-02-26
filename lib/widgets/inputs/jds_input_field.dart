import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:jds_design/enums/input_type.dart';
import 'package:jds_design/jds_design.dart';
import 'package:jds_design/utils/masks/currency_mask.dart';
import 'package:jds_design/utils/masks/input_mask.dart';

class JDSInputField extends StatelessWidget {
  const JDSInputField({
    final Key key,
    final Variant variant,
    final String hintText,
    final FocusNode focusNode,
    final bool autofocus = false,
    final bool capitalize = false,
    final bool obscureText = false,
    final TextEditingController controller,
    final List<TextInputFormatter> inputFormatters,
    final TextInputType keyboardType,
    final void Function(String) onChanged,
    final InputType inputType,
    final String label,
    final String subLabel,
    final Widget hint,
    final Widget prefix,
    final IconData prefixIcon,
    final Color borderColor,
  })  : assert(autofocus != null),
        _key = key,
        _variant = variant,
        _autofocus = autofocus,
        _obscureText = obscureText,
        _controller = controller,
        _focusNode = focusNode,
        _hintText = hintText,
        _onChanged = onChanged,
        _capitalize = capitalize,
        _inputFormatters = inputFormatters,
        _keyboardType = keyboardType,
        _inputType = inputType,
        _label = label,
        _subLabel = subLabel,
        _hint = hint,
        _prefix = prefix,
        _prefixIcon = prefixIcon,
        _borderColor = borderColor,
        super();

  final Key _key;
  final Variant _variant;
  final bool _autofocus;
  final bool _obscureText;
  final TextEditingController _controller;
  final void Function(String) _onChanged;
  final String _hintText;
  final FocusNode _focusNode;
  final bool _capitalize;
  final List<TextInputFormatter> _inputFormatters;
  final TextInputType _keyboardType;
  final InputType _inputType;
  final String _label;
  final String _subLabel;
  final Widget _hint;
  final Widget _prefix;
  final IconData _prefixIcon;
  final Color _borderColor;

  bool get _hasHint => _hintText != null && _hintText.isNotEmpty;
  bool get _hasPrefix => _prefix != null;
  bool get _hasPrefixIcon => _prefixIcon != null;

  Color get _variantColor {
    Color _color;
    // replace border color to variant
    switch (_variant) {
      case Variant.primary:
        _color = _borderColor ?? JDSColors.green;
        break;

      case Variant.danger:
        _color = _borderColor ?? JDSColors.red;
        break;

      case Variant.secondary:
        _color = _borderColor ?? JDSColors.grey;
        break;

      default:
        _color = Colors.grey;
        break;
    }

    return _color;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // label
        if (_label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(_label, style: JDSTextTheme.subtitle2),
            ),
          ),

        // sub label
        if (_subLabel != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(_label,
                  style: JDSTextTheme.subtitle2.copyWith(fontSize: 13)),
            ),
          ),

        // box input field
        Container(
          // decoration: BoxDecoration(
          //   border: Border.all(width: 1, color: JDSColors.green),
          //   borderRadius: BorderRadius.circular(8),
          // ),
          child: Center(
            child: TextField(
              key: _key,
              autofocus: _autofocus,
              focusNode: _focusNode,
              controller: _controller,
              onChanged: _onChanged,
              autocorrect: false,
              obscureText: _obscureText,
              textCapitalization: _capitalize
                  ? TextCapitalization.words
                  : TextCapitalization.none,
              keyboardType: keyboardType(),
              inputFormatters: [
                FilteringTextInputFormatter.singleLineFormatter,
                FilteringTextInputFormatter.deny(TextInputMask.emojis),
                if (_inputFormatters != null) ..._inputFormatters,
                if (_inputType == InputType.personName)
                  FilteringTextInputFormatter.deny(TextInputMask.numbers),
                if (_inputType == InputType.personName)
                  FilteringTextInputFormatter.deny(TextInputMask.symbols),
                // if (_inputType == InputType.cpf)
                //   TextInputMask(mask: '999.999.999-99'),
                if (_inputType == InputType.currency) CurrencyMask(),
                // if (_inputType == InputType.phone)
                //   TextInputMask(mask: '(99) 9 9999 9999'),
              ],
              decoration: InputDecoration(
                isDense: true,
                // begin:: prefix
                prefix: _hasPrefix ? _prefix : null,
                prefixIcon: _hasPrefixIcon
                    ? Icon(
                        _prefixIcon,
                        color: JDSColors.grey[800],
                        size: 16,
                      )
                    : null,
                prefixIconConstraints: BoxConstraints(
                  minWidth: 30,
                ),
                // prefixText: 'Prefix ',
                prefixStyle: JDSTextTheme.button2,
                // end:: prefix

                // begin:: suffix
                suffix: Text('test prefix '),
                // suffixIcon: Icon(
                //   Icons.person,
                //   color: JDSColors.grey[800],
                //   size: 16,
                // ),
                suffixIconConstraints: BoxConstraints(
                  minWidth: 30,
                ),
                suffixStyle: JDSTextTheme.button2,
                // end:: suffix

                hintText: _hintText,
                hintStyle: _hasHint ? JDSTextTheme.button2 : null,
                filled: true,
                fillColor: Colors.transparent,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: _variantColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: _variantColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: JDSColors.red),
                  borderRadius: BorderRadius.circular(8),
                ),

                contentPadding: const EdgeInsets.only(
                  left: 8,
                  bottom: 11,
                  top: 11,
                  right: 8,
                ),
                errorStyle: JDSTextTheme.button2.copyWith(color: JDSColors.red),
              ),
              textAlign: TextAlign.left,
              style: JDSTextTheme.button2,
            ),
          ),
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: _hint == null
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: _hint,
                  ),
                ),
        )
      ],
    );
  }

  TextInputType keyboardType() {
    if (_keyboardType != null) {
      return _keyboardType;
    } else {
      switch (_inputType) {
        case InputType.cpf:
        case InputType.phone:
        case InputType.currency:
          return TextInputType.number;
          break;
        case InputType.personName:
        default:
          return TextInputType.name;
      }
    }
  }
}
