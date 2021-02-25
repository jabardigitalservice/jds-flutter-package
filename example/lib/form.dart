import 'package:flutter/material.dart';
import 'package:jds_design/jds_design.dart';
import 'package:jds_design/widgets/inputs/jds_input_field.dart';

class FormInput extends StatefulWidget {
  @override
  _FormInputState createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            JDSInputField(
              hintText: 'Input Field',
              variant: Variant.secondary,
            ),
            const SizedBox(height: 12),
            JDSInputField(
              hintText: 'Input Field',
              variant: Variant.danger,
              inputType: InputType.personName,
              // label: 'label',
              // prefixIcon: Icons.person,
            ),
          ],
        ),
      ),
    );
  }
}
