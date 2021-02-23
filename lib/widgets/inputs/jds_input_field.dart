// import 'package:facio_design_system/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:jds_design/jds_design.dart';

// import 'masks/currency_mask.dart';
// import 'masks/magic_mask.dart';

enum InputType { currency, cpf, phone, personName }

class JDSInputField extends StatelessWidget {
  const JDSInputField({
    final Key key,
    final Variant variant,
    final String hintText,
    final FocusNode focusNode,
    final bool autofocus = false,
    final bool capitalize = false,
    final TextEditingController controller,
    final List<TextInputFormatter> inputFormatters,
    final TextInputType keyboardType,
    final void Function(String) onChanged,
    final InputType inputType,
    final String label,
    final String subLabel,
    final Widget hint,
    final IconData prefixIcon,
  })  : assert(autofocus != null),
        _key = key,
        _variant = variant,
        _autofocus = autofocus,
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
        _prefixIcon = prefixIcon,
        super();

  final Key _key;
  final Variant _variant;
  final bool _autofocus;
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
  final IconData _prefixIcon;

  bool get _hasHint => _hintText != null && _hintText.isNotEmpty;
  bool get _hasPrefixIcon => _prefixIcon != null;

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
              textCapitalization: _capitalize
                  ? TextCapitalization.words
                  : TextCapitalization.none,
              keyboardType: keyboardType(),
              decoration: InputDecoration(
                prefixIcon: _hasPrefixIcon
                    ? Icon(
                        _prefixIcon,
                        color: JDSColors.grey[800],
                      )
                    : null,
                prefixIconConstraints: BoxConstraints(
                  minWidth: 40,
                  minHeight: 0,
                ),
                // prefixText: 'prefix',
                // prefixIcon: Icon(Icons.ac_unit_outlined),
                // prefixText: _inputType == InputType.currency ? 'R\$ ' : '',
                prefixStyle: JDSTextTheme.button2,
                hintText: _hintText,
                hintStyle: _hasHint ? JDSTextTheme.button2 : null,
                filled: true,
                fillColor: Colors.transparent,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: JDSColors.green),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: JDSColors.green),
                  borderRadius: BorderRadius.circular(8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: JDSColors.green),
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
              cursorColor: Colors.black54,
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
