import 'package:flutter/material.dart';
import 'package:jds_design/jds_design.dart';

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
              variant: Variant.primary,
              prefixIcon: Icons.search,
              // label: 'label',
              // prefixIcon: Icons.person,
            ),
          ],
        ),
      ),
    );
  }
}
